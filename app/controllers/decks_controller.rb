class DecksController < ApplicationController

    def index
        @decks = Deck.all.where("level > 0").map{ |deck| deck.with_cards } 
        render json: @decks 
    end

end
