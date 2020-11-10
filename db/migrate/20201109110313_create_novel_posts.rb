class CreateNovelPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :novel_posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :for_genre
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
