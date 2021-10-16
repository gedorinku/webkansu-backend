class AddToUserNovelOwnerships < ActiveRecord::Migration[6.1]
  def change
    change_table :user_novel_ownerships do |t|
      t.integer :provider, null: false
      t.string :slug, null: false
      t.string :title_cache, null: false
      t.string :author_name_cache, null: false

      t.index [:user_id, :provider, :slug], unique: true
    end

    add_foreign_key :bookmarks, :user_novel_ownerships
  end
end
