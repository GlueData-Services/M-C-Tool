class CreateSourceNames < ActiveRecord::Migration[7.0]
  def change
    create_table :source_names do |t|
      t.string :name
      t.string :c_name
      t.boolean :available, default: false

      t.timestamps
    end
  end
end
