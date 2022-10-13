class ResetAllMatchedArticlesCacheCounters < ActiveRecord::Migration[7.0]
  def change
    Match.all.each do |match|
      Match.reset_counters(match.id, :matched_articles)
    end
  end
end
