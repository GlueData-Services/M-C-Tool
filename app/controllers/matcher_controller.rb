class MatcherController < ApplicationController
  def index
    if params[:unmatched_limit]
      cookies[:unmatched_limit] = params[:unmatched_limit]
    end

    if params[:match_q]
      # @need_match = Mara.unmatched.where('barcodes like :q OR description LIKE :q', q: "%#{params[:match_q]}%").page(params[:n_page]).per(5)
      @need_match = Mara.active.unmatched.where('barcodes LIKE :q OR description LIKE :q', q: "%#{params[:match_q]}%")
      @need_match = @need_match.where(banner: params[:f_banner].upcase) if params[:f_banner].present?
      @need_match = @need_match.where(article_type: params[:f_article_type]) if params[:f_article_type].present?
      @need_match = @need_match.page(params[:n_page]).per(cookies.fetch(:unmatched_limit, 5))
    else
      @need_match = Mara.active.unmatched.all.page(params[:n_page]).per(cookies.fetch(:unmatched_limit, 5))
    end

    if params[:q]
      @matched = Mara.search(params[:q], operator: "or", fields: ['barcodes^10', :description], page: params[:m_page], per_page: 20)
    else
      @matched = Mara.all.page(params[:m_page]).per(10)
    end

  end

  def create
    match = Match.create(status: 'awaiting')
    params[:p_matnr].each do |matnr|
      Mara.where(prefixed_matnr: matnr).update(matched: true)
      match.matched_articles.create(prefixed_matnr: matnr)
    end

    redirect_to matcher_path(notice: 'Match created')
  end
end
