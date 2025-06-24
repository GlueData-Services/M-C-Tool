class CreateSourceLookups < ActiveRecord::Migration[7.0]
  def change
    create_table :source_lookups do |t|
      t.string :SOURCE_SYSTEM
      t.string :BANNER_NAME
      t.string :SOURCE_TABLES

      t.timestamps
    end
  end
end
