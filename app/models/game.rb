class Game < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_one_attached :picture
    searchkick word_middle: [:game_name, :description]
    def search_data
        {
          game_name: game_name,
          description: description,
        }
      end
end
