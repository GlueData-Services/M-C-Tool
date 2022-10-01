class CreateMatchUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :match_units do |t|
      t.references :match, null: false, foreign_key: true
      t.integer :quantity
      t.string :prefixed_matnr
      t.string :ean
      t.string :unit

      t.timestamps
    end
  end
end
