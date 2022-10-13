class AddMatchedArticlesCountToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :matched_articles_count, :integer
  end
end
