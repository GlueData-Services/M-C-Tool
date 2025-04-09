class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.string :client_name
      t.text :license_key
      t.date :expire_date

      t.timestamps
    end
  end
end
