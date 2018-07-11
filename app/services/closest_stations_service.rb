class ClosestStationsService
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def stations
    data.map do |info|
      Station.new(info)
    end
  end

  private
  def response
    Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?limit=10&radius=6.0&fuel_type=LPG,ELEC&location=#{@zip_code}&api_key=#{ENV['NREL_API_KEY']}"
  end

  def data
    json = JSON.parse(response.body, symbolize_names: true)
    return json[:fuel_stations]
  end
end