class FoodService
  def self.call_api(endpoint, params = {})
    response = conn.get(endpoint) do |req|
      req.params = params
      req.params[:api_key] = Rails.application.credentials.foods[:key]
    end
    parse_data(response)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/")
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end