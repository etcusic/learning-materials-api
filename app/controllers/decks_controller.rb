class DecksController < ApplicationController

    def index
        @decks = Deck.all
        render json: @decks.map{ |deck| deck.with_cards }
    end

end
