class MatcherController < ApplicationController
  before_action :authenticate_user!

  def index
    cookies[:unmatched_limit] = params[:unmatched_limit] if params[:unmatched_limit]
    cookies[:min_score] = params[:min_score] if params[:min_score]

    if params[:match_q].present? || params[:f_banner].present? || params[:f_article_type].present?
      _where = {
        # matched: 0,
        # active: 'Y',
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

    if params[:q]
      @matched = Mara.search(params[:q],
                             operator: "or",
                             where: { 'matched' => 'false' },
                             fields: ['barcodes^10', :description],
                             # fields: ['barcodes', :description],
                             page: params[:m_page], per_page: 20,
                             highlight: { tag: "<strong>" },
                             misspellings: { edit_distance: 2, fields: [:description] },
                             body_options: { min_score: cookies.fetch(:min_score, 300) })

      @scores = {}
      body = @matched.response.respond_to?(:body) ? @matched.response.body : @matched.response
      body.dig('hits', 'hits').each do |score|
        @scores[score["_id"]] = score["_score"]
      end
    end
  rescue Searchkick::MissingIndexError, Faraday::ConnectionFailed => e
    @matched = []
    @error = e.message
  end

  def create
    if params[:p_matnr].blank?
      redirect_to matcher_path(notice: 'No matches selected')
      return
    end

    Match.transaction do
      @match = Match.create(status: 'awaiting')
      params[:p_matnr].each do |matnr|
        Mara.where(prefixed_matnr: matnr).update(matched: true)
        @match.matched_articles.create(prefixed_matnr: matnr)
      end
    end

    if params[:button] == 'continue'
      redirect_to matcher_path(notice: 'Match created')
    else
      redirect_to consolidate_match_path(@match)
    end
  rescue Exception => e
    logger.debug e.message
    redirect_to matcher_path(notice: e.message)
  end
end
