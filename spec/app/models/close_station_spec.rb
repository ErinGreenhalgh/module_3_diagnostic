require "rails_helper"

RSpec.describe "close station" do
  scenario "creates all close station objects" do
    VCR.use_cassette("close_fueling_stations") do
      data = CloseStation.all_stations(80203)
      expect(data.count).to eq 10
      expect(data.first.class).to eq CloseStation  
    end
  end
end
