class Food
  attr :description,
        :brand_owner,
        :ingredients,
        :gtinupc

  def initialize(data)
    @description = data[:description]
    @fdcid = data[:fdcId]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
    @gtinupc = data[:gtinUpc]
  end
end