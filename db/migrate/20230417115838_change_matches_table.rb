class ChangeMatchesTable < ActiveRecord::Migration[7.0]

  def up
    change_column :matches, :harmonized, :string, default: nil
    Match.update_all(harmonized: nil)
  end
  
  def down
    change_column :matches, :harmonized, :boolean, default: false
  end
end
