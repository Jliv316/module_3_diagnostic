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
  def conn
    Faraday.new("https://developer.nrel.gov/api")
  end

  def response
    conn.get "/alt-fuel-stations/v1.json?limit=10&radius=6.0&fuel_type=LPG,ELEC&location=#{@zip_code}&api_key=ihuEfN4uxkeLr8FbAar3h3xSOAVZUsbpK8Th1Qo4"
  end

  def data
    binding.pry
    json = JSON.parse(response.body, symbolize_names: true)
  end
end