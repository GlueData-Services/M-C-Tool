class ValidationController < ApplicationController
  before_action :authenticate_user!

  def index
    @current_matches = Match.incomplete
    @current_matches = @current_matches.mara_groups(params[:incomplete_group_filter]) if params[:incomplete_group_filter].present?
    @current_matches = @current_matches.distinct.page(params[:page]).per(params[:per])

    @complete_matches = Match.complete.page(params[:page]).per(params[:per])

    @error_matches = Match.in_error
    @error_matches = @error_matches.has_error(params[:error_filter]) if params[:error_filter]
    @error_matches = @error_matches.page(params[:page]).per(params[:per])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    result = UpdateMatch.call(match_id: params[:id],
                              field_params: field_params,
                              unit_params: unit_params,
                              status: params['status'])
    @match = result.match

    if result.success?
      redirect_to consolidate_match_path(@match), notice: 'Updated consolidated fields'
    else
      redirect_to consolidate_match_path(@match), error: result.message[0..1000]
    end
  end

  def add_article
    @match = Match.find(params[:match_id])
    @match.maras << Mara.find(params[:mara_id])

    redirect_to consolidate_match_path(@match), notice: 'Added article to match'
  end

  def remove_article
    matched_article = MatchedArticle.find_by(match_id: params[:match_id], prefixed_matnr: params[:mara_id])
    if matched_article.destroy
      redirect_to consolidate_match_path(params[:match_id]), notice: 'Removed article from match'
    else
      redirect_to consolidate_match_path(params[:match_id]), error: 'Could not remove article from match'
    end
  end

  def main_article
    matched_article = MatchedArticle.find_by(match_id: params[:match_id], prefixed_matnr: params[:mara_id])
    if matched_article.update(main: !params[:unmark].present?)
      redirect_to consolidate_match_path(params[:match_id]), notice: matched_article.main? ? 'Marked article as main' : 'Unmarked main'
    else
      redirect_to consolidate_match_path(params[:match_id]), error: 'Could not mark article as main'
    end
  end

  private

  def field_params
    params.require(:match_fields).permit!
  end

  def unit_params
    # params.permit(match_units: [:quantity, :unit, :prefixed_matnr, :ean])
    # params[:match_units].map(&:permit!)
    params.fetch(:match_units, []).map(&:permit!)
  end
end
