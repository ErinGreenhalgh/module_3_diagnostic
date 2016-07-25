require 'rails_helper'

RSpec.describe "fuel service" do
  scenario "gets closest stations to a given zipcode" do
    VCR.use_cassette("close_fueling_stations") do
      FuelService.new.get_close_stations(80203)
      expect(response[:fuel_stations].class).to eq Array
      expect(response[:fuel_stations].count).to eq 112
    end
  end
end
