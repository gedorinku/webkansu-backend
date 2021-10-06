class CreateUserNovelOwnerships < ActiveRecord::Migration[6.1]
  def change
    create_table :user_novel_ownerships do |t|
      t.bigint :user_id, null: false
      t.bigint :novel_id, null: false

      t.timestamps

      t.index [:user_id, :novel_id], unique: true
    end

    add_foreign_key :user_novel_ownerships, :users
    add_foreign_key :user_novel_ownerships, :novels
  end
end
