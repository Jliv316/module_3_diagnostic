class Station
  attr_reader :zip_code
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def closest_stations
    ClosestStationsService.new(@zip_code).closest_stations
  end
end