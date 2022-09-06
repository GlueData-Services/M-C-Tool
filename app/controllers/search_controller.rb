class SearchController < ApplicationController
  before_action :authenticate_user!

  def search
    @match_id = params[:match_id]
    @need_match = get_results

    respond_to do |format|
      if params[:consolidator].present?
        format.turbo_stream { render turbo_stream: turbo_stream.update("results", partial: 'consolidator_results') }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.update("results", partial: 'matcher/results_table') }
      end
    end
  end

  private

  def get_results
    if params[:unmatched_limit]
      cookies[:unmatched_limit] = params[:unmatched_limit]
    end

    if params[:match_q].present? || params[:f_banner].present? || params[:f_article_type].present?
      _where = {
        # matched: false,
        # active: true,
      }
      _where[:banner] = params[:f_banner] if params[:f_banner].present?
      _where[:article_type] = params[:f_article_type] if params[:f_article_type].present?

      q = params[:match_q].blank? ? '*' : params[:match_q]

      @need_match = Mara.search(q,
                                where: _where,
                                misspellings: { edit_distance: 2, fields: [:description] },
                                per_page: cookies.fetch(:unmatched_limit, 5),
                                page: params[:n_page],
                                fields: [:description, :barcodes, :banner]
      )

    else
      @need_match = Mara.active.unmatched.all.page(params[:n_page]).per(cookies.fetch(:unmatched_limit, 5))
    end
  end
end
