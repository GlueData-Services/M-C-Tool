class AddDuplicateFlagToMatchedArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :matched_articles, :match_duplicate, :boolean
  end
end
