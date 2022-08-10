class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :code_1
      t.string :code_2
      t.string :code_3
      t.string :name
      t.string :model
      t.string :brand
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
