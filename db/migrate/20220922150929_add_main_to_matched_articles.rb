class AddMainToMatchedArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :matched_articles, :main, :boolean, default: false
  end
end
