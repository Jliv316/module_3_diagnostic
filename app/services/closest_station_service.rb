class ClosestStationService
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def closest_station

  end

  private
  def conn
    Faraday.new("https://developer.nrel.gov/api")
  end

  def response
    conn.get "/alt-fuel-stations/v1.json?limit=1&api_key=YOUR_KEY_HERE" do |request|
    end
  end

  def data
    json = JSON.parse(response.body, symbolize_names: true)
    json[:items]
  end
end