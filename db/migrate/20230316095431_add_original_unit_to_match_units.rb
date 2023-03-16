class AddOriginalUnitToMatchUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :match_units, :original_unit, :string
  end
end
