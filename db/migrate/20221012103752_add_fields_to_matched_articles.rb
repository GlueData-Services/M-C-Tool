class AddFieldsToMatchedArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :matched_articles, :tax_diff, :boolean
    add_column :matched_articles, :uom_review, :boolean
    add_column :matched_articles, :comment, :string
    add_column :matched_articles, :reported_at, :datetime
  end
end
