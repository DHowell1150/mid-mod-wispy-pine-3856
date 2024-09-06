class FoodFacade
  def self.top_ten_matched(searched_food)
    params = {q: searched_food}
    params[:pageSize] = 10
    params[:pageNumber] = 1
    params[:dataType] = "Branded"
    top_ten = FoodService.call_api('/fdc/v1/foods/search', params)
  end
end