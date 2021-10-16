class DropNovels < ActiveRecord::Migration[6.1]
  def change
    remove_index :user_novel_ownerships, [:user_id, :novel_id]
    remove_column :user_novel_ownerships, :novel_id

    drop_table :novel_chapters
    drop_table :novels
  end
end
