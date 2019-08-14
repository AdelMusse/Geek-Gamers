class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text_comment
      t.decimal :rate
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
