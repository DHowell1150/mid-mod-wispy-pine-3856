class FoodsController < ApplicationController
  def index
    top_ten_foods = FoodFacade.top_ten_matched(params[:q])
  end
end