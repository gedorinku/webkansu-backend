class AddNovels < ActiveRecord::Migration[6.1]
  def change
    create_table :novels do |t|
      t.string :slug, null: false
      t.integer :provider, null: false
      t.string :title, null: false
      t.datetime :crawled_at

      t.timestamps

      t.index [:slug, :provider], unique: true
    end

    create_table :novel_chapters do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.bigint :novel_id, null: false
      t.datetime :crawled_at

      t.timestamps

      t.index :novel_id
    end

    add_foreign_key :novel_chapters, :novels
  end
end
