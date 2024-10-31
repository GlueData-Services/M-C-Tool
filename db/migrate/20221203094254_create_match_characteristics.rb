class CreateMatchCharacteristics < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :match_characteristics
      create_table :match_characteristics do |t|
        t.integer :match_id
        t.string :mara_id
        t.string :char_name
        t.string :char_value

        t.timestamps
      end

      add_index :match_characteristics, :match_id
      add_index :match_characteristics, :mara_id
    end
  end
end
