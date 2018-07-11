class SearchController < ApplicationController
  def index
    @sorted_stations = Station.new(zip_code).closest_stations
  end
end