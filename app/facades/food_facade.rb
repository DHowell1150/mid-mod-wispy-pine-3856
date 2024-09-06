class FoodFacade
  def self.top_ten_matched(searched_food)
    params = searched_food
    top_ten = FoodService.call_api('/fdc/v1/foods/search', params)
  end
end