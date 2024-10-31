class AddResolversToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matched_articles, :refer_to_buyers, :boolean, default: false
    add_column :matched_articles, :refer_to_merch, :boolean, default: false
    add_column :matched_articles, :refer_to_replenishment, :boolean, default: false
    add_column :matched_articles, :refer_to_finance, :boolean, default: false
    add_column :matched_articles, :refer_to_master_data, :boolean, default: false

    remove_column :matched_articles, :uom_mismatch
    remove_column :matched_articles, :bad_category
    remove_column :matched_articles, :bad_material
    remove_column :matched_articles, :duplicate
  end
end
