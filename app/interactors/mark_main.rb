# frozen_string_literal: true

class MarkMain
  include Interactor

  def call
    # matched_article = MatchedArticle.find_by(match_id: params[:match_id], prefixed_matnr: params[:mara_id])
    match = Match.find(context.match_id)
    article = match.matched_articles.find_by(prefixed_matnr: context.mara_id)

    if context.unmark
      match.matched_articles.joins(:mara).where(mara: { banner: article.banner }).update_all(main: false, match_duplicate: true)
      context.marked_main = false
    else
      match.matched_articles.joins(:mara).where(mara: { banner: article.banner }).update_all(main: false, match_duplicate: true)
      article.update(main: true, match_duplicate: false)
      context.marked_main = true
    end
  end
end
