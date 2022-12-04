class CreateComments < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :comments
      create_table :comments do |t|
        t.references :commentable, polymorphic: true, null: false
        t.references :user, null: false, foreign_key: true
        t.string :comment_type
        t.text :comment

        t.timestamps
      end
    end
  end
end
