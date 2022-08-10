class CreateMatchedArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :matched_articles do |t|
      t.integer :match_id
      t.string :prefixed_matnr

      t.timestamps
    end
  end
end
