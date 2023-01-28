class ValidationController < ApplicationController
  before_action :authenticate_user!

  def index
    @current_matches = Match.incomplete
    @current_matches = @current_matches.mara_groups(params[:incomplete_group_filter]) if params[:incomplete_group_filter].present?
    @current_matches = @current_matches.where("matched_articles_count = ?", params[:article_count_filter]) if params[:article_count_filter].present? && params[:article_count_filter].to_i < 3
    @current_matches = @current_matches.where("matched_articles_count >= 3") if params[:article_count_filter].present? && params[:article_count_filter].to_i == 3
    @current_matches = @current_matches.distinct.page(params[:page]).per(params[:per])

    @complete_matches = Match.complete
    @complete_matches = @complete_matches.mara_groups(params[:complete_group_filter]) if params[:complete_group_filter].present?
    @complete_matches = @complete_matches.page(params[:page]).per(params[:per])

    @error_matches = Match.in_error
    @error_matches = @error_matches.has_error(params[:error_filter]) if params[:error_filter]
    @error_matches = @error_matches.where("matched_articles_count = ?", params[:match_count_filter]) if params[:match_count_filter].present? && params[:match_count_filter].to_i < 3
    @error_matches = @error_matches.where("matched_articles_count >= 3") if params[:match_count_filter].present? && params[:match_count_filter].to_i == 3
    @error_matches = @error_matches.includes(:matched_articles).page(params[:page]).per(params[:per])
  end

  def edit
    @match = Match.includes(maras: :match_fields).find(params[:id])
    params[:review] = @match.status == 'complete'
    @lookups = Lookup.generate_lookup
  end

  def update
    result = UpdateMatch.call(match_id: params[:id],
                              field_params: field_params,
                              unit_params: unit_params,
                              tax_params: tax_params,
                              char_params: char_params,
                              class_params: class_params,
                              variant_params: variant_params,
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

  def comments
    @comments = Match.find(params[:id]).comments
    render 'comments/index'
  end

  def new_comment
    @comment = Match.find(params[:id]).comments.new(user: current_user, comment: params[:comment])

    respond_to do |format|
      if @comment.save
        format.turbo_stream {
          render turbo_stream: turbo_stream.append('comments',
                                                   render_to_string(partial: 'comments/comment', locals: { comment: @comment }))
        }
      else
        format.json message: 'Could not save comment', success: false
      end
    end
  end

  def pass
    @match = Match.find(params[:id])
    @match.pass!

    redirect_to consolidate_match_url(@match)
  end

  def fail
    @match = Match.find(params[:id])
    if @match.fail!
      redirect_to consolidate_match_url(@match)
    else
      redirect_to :back, notice: 'We could not change the status of this match'
    end
  end

  # Finds the match using the :id parameter, and updates its status to 'awaiting_external'
  def awaiting_external
    @match = Match.find(params[:id])
    @match.awaiting_external!

    redirect_to consolidation_url, notice: 'Match is now awaiting external data'
  end

  def resolved
    @match = Match.find(params[:id])
    @match.destroy

    redirect_to consolidation_url, notice: 'Match has been resolved'
  end

  private

  def class_params
    params.fetch(:classification, []).map(&:permit!)
  end

  def char_params
    params.fetch(:characteristics, []).map(&:permit!)
  end

  def tax_params
    params.fetch(:match_tax, {}).permit!
  end

  def field_params
    params.fetch(:match_fields, {}).permit!
  end

  def unit_params
    # params.permit(match_units: [:quantity, :unit, :prefixed_matnr, :ean])
    # params[:match_units].map(&:permit!)
    params.fetch(:match_units, []).map(&:permit!)
  end

  def variant_params
    params.fetch(:variants, {}).permit!
  end
end
