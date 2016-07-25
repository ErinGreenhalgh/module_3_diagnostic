require "rails_helper"

RSpec.feature "user sees closest stations to a given zipcode" do
  scenario "when they submit to the zipcode form" do
    user = create(:user)

    visit root_path
    fill_in "something", with "80203"
    click_button "Locate"

    expect(current_path).to eq "/search?zip=80203"
    expect(page).to have_content

# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times


  end
end
