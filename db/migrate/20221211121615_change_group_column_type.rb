class ChangeGroupColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :matchable_articles, :group, :string, limit: 128
  end
end
