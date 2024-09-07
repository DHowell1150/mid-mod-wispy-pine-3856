require 'rails_helper'

RSpec.describe FoodService do
  it 'can make API call to database', :vcr do
    params = {  q: "sweet potato", 
                pageSize: 10,
                pageNumber: 1,
                dataType: "Branded"
              }
    query = FoodService.call_api('/fdc/v1/foods/search', params)
    
    expect(query).to be_a Hash
    expect(query[:totalHits]).to be_an(Integer)
    
    foods = query[:foods].first

    expect(foods).to have_key(:description)
    expect(foods[:description]).to be_a(String)

    expect(foods).to have_key(:brandOwner)
    expect(foods[:brandOwner]).to be_a(String)

    expect(foods).to have_key(:ingredients)
    expect(foods[:ingredients]).to be_a(String)
  end
end