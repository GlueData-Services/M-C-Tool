class CreateMatchClasses < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :match_classes
      create_table :match_classes do |t|
        t.integer :match_id
        t.string :mara_id
        t.string :class_name
        t.string :class_value

        t.timestamps
      end

      add_index :match_classes, :match_id
      add_index :match_classes, :mara_id
    end
  end
end
