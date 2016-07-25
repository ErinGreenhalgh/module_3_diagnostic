require "rails_helper"

RSpec.feature "user sees closest stations to a given zipcode" do
  scenario "when they submit to the zipcode form" do
    visit root_path
    # fill_in "something", with "80203"
    # click_button "Locate"

    # expect(current_path).to eq "/search?zip=80203"
    expect(page).to have_content "Close Fueling Stations to Your Zipcode"
    expect(page).to have_content "Station Name"
    expect(page).to have_content "Station Address"
    expect(page).to have_content "Station City"
    expect(page).to have_content "Station Fuel Type"
    expect(page).to have_content "Station Distance"
    expect(page).to have_content "Station Access Time"

# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
