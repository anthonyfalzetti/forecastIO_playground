require 'rails_helper'

feature 'Creating Locations' do
  scenario 'can create location' do
    visit '/'

    click_link 'New Location'

    fill_in 'Address', with: '80202'

    click_button 'Create Location'

    expect(page).to have_content('Location was successfully created')
  end

  scenario 'creating a location fetches the lat and long' do
    visit '/'

    click_link 'New Location'

    fill_in 'Address', with: '80234'
    click_button 'Create Location'

    expect(page).to have_content("Address: 80234")
    expect(page).to have_content("Latitude: 39.9122468")
    expect(page).to have_content("Longitude: -105.0031457")
  end
end
