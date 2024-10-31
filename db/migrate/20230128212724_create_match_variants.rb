class CreateMatchVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :match_variants do |t|
      t.integer :match_id
      t.string :matnr
      t.integer :variant_number

      t.timestamps
    end
  end
end
