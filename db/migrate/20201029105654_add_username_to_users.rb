class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :favorite_genre, :string
    add_column :users, :recomended_one, :string
    add_column :users, :recomended_one_point, :string
    add_column :users, :recomended_two, :string
    add_column :users, :recomended_three, :string
    add_column :users, :recomended_four, :string
    add_column :users, :recomended_five, :string
  end
end
