class ValidationController < ApplicationController
  before_action :authenticate_user!

  def index
    @matches = Match.all.page(params[:page]).per(params[:per])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    Match.transaction do
      match_params.each do |lookup_id, match_details|
        field = @match.match_fields.where(lookup_id: lookup_id).present? ?
                  @match.match_fields.where(lookup_id: lookup_id).first :
                  @match.match_fields.new(lookup_id: lookup_id)
        if match_details[:mara_id].present?
          match_details[:overridden_value] = nil
        end
        field.update(match_details)
        field.save
      end
    end

    redirect_to consolidate_match_path(@match), notice: 'Updated consolidated fields'
  rescue Exception => e
    redirect_to consolidate_match_path(@match), error: e.message
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

  private

  def match_params
    params[:match_fields].permit!
  end
end
