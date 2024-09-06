require 'rails_helper'

RSpec.describe FoodService do
  it 'can make API call to database', :vcr do
    params = {}
    query = FoodService.call_api('/fdc/v1/foods/search', params)
    # result = query.first

    # expect(query).to be_an Array
    # expect(result).to be_a Hash
    # check_hash_structure(result, :key_name, data_type)
  end
end