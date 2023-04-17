class AddHarmonizedToMatchesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :harmonized, :boolean, default: false

    add_index :matches, :harmonized
  end
end
