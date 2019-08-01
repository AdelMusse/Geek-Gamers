class AddPictureToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :picture, :string
  end
end
