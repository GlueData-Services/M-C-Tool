class MatcherController < ApplicationController
  def index
    if params[:match_q]
      @need_match = Mara.unmatched.where('`EAN11` like :q OR `Material description` LIKE :q', q: "%#{params[:match_q]}%").page(params[:n_page]).per(5)
    else
      @need_match = Mara.unmatched.all.page(params[:n_page]).per(5)
    end

    if params[:q]
      # @matched = Mara.search(params[:q], operator: "or", page: params[:m_page], per_page: 10, boost_by: [:barcodes])
      @matched = Mara.search(params[:q], operator: "or", fields: ['barcodes^10', :description], page: params[:m_page], per_page: 20)
    else
      @matched = Mara.all.page(params[:m_page]).per(10)
    end
  end

  def create
    match = Match.create(status: 'awaiting')
    params[:p_matnr].each do |matnr|
      match.matched_articles.create(prefixed_matnr: matnr)
      Mara.find_by(prefixed_matnr: matnr).update(matched: true)
    end

    redirect_to matcher_path(notice: 'Match created')
  end
end
