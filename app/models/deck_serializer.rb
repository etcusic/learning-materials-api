class DeckSerializer

    def initialize(deck_object)
        @deck = deck_object
    end
    
    def to_serialized_json
        @deck.to_json(
            :only => [:id, :name, :level],
            :include => {
                :cards => { :only => [:id, :name, :side_a, :side_b] }
            }
        )
    end

end