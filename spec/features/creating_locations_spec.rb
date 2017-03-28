require 'rails_helper'

feature 'Creating Locations' do
  scenario 'can create location' do
    visit '/'

    click_link 'New Location'

    fill_in 'Zip', with: '80202'

    click_button 'Create Location'

    expect(page).to have_content('Location was successfully created')
  end
end
