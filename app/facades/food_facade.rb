class FoodFacade
  def self.top_ten_matched(searched_food)
    params = { query: searched_food }
    params[:dataType] = "Branded"
    matched_foods = FoodService.call_api('/fdc/v1/foods/search', params)[:foods]

    top_ten_matched = matched_foods.first(10)
    top_ten_matched.map do |food|
      Food.new(food)
    end
  end

  def self.total_hits(searched_food)
    params = {query: searched_food}
    params[:dataType] = "Branded"
    FoodService.call_api('/fdc/v1/foods/search', params)[:totalHits]
  end
end