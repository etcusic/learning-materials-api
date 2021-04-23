require 'rails_helper'

# rspec ./spec/models/deck_spec.rb

RSpec.describe Deck, :type => :model do
  
    it "is valid with valid attributes" do 
        expect(Deck.new(name: "New Deck")).to be_valid
    end
  
    it "is not valid without a name" do
        deck = Deck.new(name: nil)
        expect(deck).to_not be_valid
      end
end