class Deck < ApplicationRecord
    has_many :cards
    validates :name, presence: true

    # move to serializer
    def with_cards
        @deck = {
            id: self.id,
            name: self.name,
            level: self.level,
            cards: []
        }
        self.cards.each{ |card| @deck[:cards] << CardSerializer.new(card).to_serialized_json }
        @deck
    end

end
