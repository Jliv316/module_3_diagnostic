class Nrel
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def stations
    ClosestStationsService.new(@zip_code).stations
  end
end