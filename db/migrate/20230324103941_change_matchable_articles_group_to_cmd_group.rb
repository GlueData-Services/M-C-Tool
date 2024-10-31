class ChangeMatchableArticlesGroupToCmdGroup < ActiveRecord::Migration[7.0]
  def change
    rename_column :matchable_articles, :group, :cmd_group
  end
end
