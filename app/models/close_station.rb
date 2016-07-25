class CloseStation
  attr_reader :name, :address, :city, :fuel_type, :distance, :access_time

  def initialize(station_data)
    @name             = station_data[:station_name]
    @address          = station_data[:street_address]
    @city             = station_data[:city]
    @fuel_type        = station_data[:fuel_type_code]
    @distance         = station_data[:distance]
    @access_time      = station_data[:access_days_time]
  end

  def self.all_stations(zipcode)
    response = FuelService.new.get_close_stations(zipcode)
    response[:fuel_stations].map do |station_data|
      CloseStation.new(station_data)
    end
  end

end
