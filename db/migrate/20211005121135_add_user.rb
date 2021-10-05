class AddUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login_name, null: false
      t.string :password_digest, null: false

      t.index :login_name, unique: true
    end
  end
end
