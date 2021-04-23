require 'rails_helper'

RSpec.describe Deck, :type => :model do
  
    it "is valid with valid attributes" do 
        expect(Deck.new).to be_valid
    end
  
    it "is not valid without a name"
end