class AddIndexForArticleType < ActiveRecord::Migration[7.0]
  def change
    add_index :matchable_articles, :article_type
  end
end
