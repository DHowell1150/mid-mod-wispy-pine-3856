require 'rails_helper'

RSpec.describe FoodFacade do
    it 'returns a list of 10 foods matching search' do
      searched_food = { query: searched_food } 

      result = FoodFacade.top_ten_matched(searched_food)
      r      = result.first

      expect(result).to be_an(Array)
      expect(r).to be_a(Food)
      expect(r.brand_owner).to be_an(String)
      expect(r.description).to be_a(String)
      expect(r.fdcid).to be_a(Integer)
      expect(r.gtinupc).to be_a(String)
      expect(r.ingredients).to be_a(String)
    end
end