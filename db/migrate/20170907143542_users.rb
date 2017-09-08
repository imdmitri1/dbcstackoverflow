class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 64
      t.string :email, null: false, unique: true
      t.string :h_password, null: false
      t.string :user_photo

      t.timestamps
    end
  end
end
