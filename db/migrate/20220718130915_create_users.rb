class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, nil: false
      t.string :email, nil: false
      t.string :user_type, default: 'user', nil: false

      t.timestamps
    end
  end
end
