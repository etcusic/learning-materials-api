class DecksController < ApplicationController

    def index
        @decks = Deck.all.map{ |deck| deck.to_serialized_json }
        render json: @decks
    end

end
