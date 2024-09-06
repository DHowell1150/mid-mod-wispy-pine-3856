require 'rails_helper'

RSpec.describe FoodFacade do
    it 'returns a list of 10 foods matching search' do
      searched_food = { 
                        query: searched_food, 
                        pageSize: 10,
                        pageNumer: 1
                      } 

      result = FoodFacade.top_ten_matched(searched_food)
      # r      = result.first

      # expect(result).to be_an(Array)
      # expect(r).to be_a(Food)
      # expect(r.attribute).to be_an(data_type)
      # expect(r.attribute).to be_a(data_type)
      # expect(r.attribute).to be_a(data_type)
    end
end