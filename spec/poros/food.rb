require "rails_helper"

RSpec.describe Food do
  it "exists and has attributes" do
    incoming_data = {

    }

    food = Food.new(incoming_data)
    expect(food).to be_a(Mood)
    expect(food.title).to be_a(String)
    expect(food.vote_ave).to be_a(Float)
  end
end