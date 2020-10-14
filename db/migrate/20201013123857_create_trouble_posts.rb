class CreateTroublePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :trouble_posts do |t|
      t.string :content

      t.timestamps
    end
  end
end
