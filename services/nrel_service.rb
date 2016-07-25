class NrelService

  def get_close_stations(zipcode)
    connection = Faraday.new("http://developer.nrel.gov")
    response = Faraday.get("api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["api_key"]}&fuel_type=ELEC,LPG&location=#{zipcode}")
    JSON.parse(response.body, symbolize_names: true )
  end
end
