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
        self.cards.each{ |card| @deck[:cards] << {id: card.id, side_a: card.side_a, side_b: card.side_b} }
        @deck
    end

end
