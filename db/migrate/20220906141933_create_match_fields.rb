class CreateMatchFields < ActiveRecord::Migration[7.0]
  def change
    create_table :match_fields do |t|
      t.integer :match_id
      t.integer :lookup_id
      t.string :mara_id
      t.string :overridden_value

      t.timestamps
    end
  end
end
