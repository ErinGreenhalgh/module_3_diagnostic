class FuelService

  def get_close_stations(zipcode)
    connection = Faraday.new("http://developer.nrel.gov")
    response = connection.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["api_key"]}&fuel_type=ELEC,LPG&location=#{zipcode}&radius=6.0&limit=10")
    JSON.parse(response.body, symbolize_names: true )
  end
end
