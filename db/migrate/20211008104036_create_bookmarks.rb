class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.bigint :user_novel_ownership_id, null: false
      t.string :slug, null: false
      t.string :position, null: false
      t.string :title_cache, null: false

      t.timestamps

      t.index [:user_novel_ownership_id], unique: true
    end
  end
end
