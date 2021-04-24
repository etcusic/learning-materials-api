class CardSerializer

    def initialize(card_object)
        @card = card_object
    end
    
    def to_serialized_json
        @card.to_json(
            :only => [:id, :side_a, :side_b] 
        )
    end

end