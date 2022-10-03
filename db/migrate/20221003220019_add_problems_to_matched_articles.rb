class AddProblemsToMatchedArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :matched_articles, :uom_mismatch, :boolean, default: false
    add_column :matched_articles, :bad_category, :boolean, default: false
    add_column :matched_articles, :bad_material, :boolean, default: false
    add_column :matched_articles, :duplicate, :boolean, default: false
  end
end
