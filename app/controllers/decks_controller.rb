class DecksController < ApplicationController

    def index
        @decks = Deck.all.map{ |deck| deck.with_cards }
        render json: @decks
    end

end
