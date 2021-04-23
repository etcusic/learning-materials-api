class Deck < ApplicationRecord
    has_many :cards

    # move to serializer
    def with_cards
        deck = {
            id: self.id,
            name: self.name,
            cards: []
        }
        self.cards.each{ |card| deck[:cards] << {side_a: card.side_a, side_b: card.side_b} }
        deck
    end

end
