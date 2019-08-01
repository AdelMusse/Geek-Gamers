class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.text :description
      t.string :image
      t.integer :user_id
      t.integer :price

      t.timestamps
    end
  end
end
