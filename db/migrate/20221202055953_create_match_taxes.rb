class CreateMatchTaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :match_taxes do |t|
      t.references :match
      t.integer :tax_classification
      t.string :tax_country
      t.string :tax_table

      t.timestamps
    end
  end
end
