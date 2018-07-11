class Station
  attr_reader :station_name, :street_address, :fuel_types, :distance, :access_times
  def initialize(info)
    @station_name = info[:station_name]
    @street_address = info[:street_address]
    @fuel_types = info[:fuel_type_code]
    @distance = info[:distance]
    @access_times = info[:access_days_times]
  end
end