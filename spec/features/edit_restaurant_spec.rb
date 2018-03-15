require 'rails_helper.rb'
feature 'Restaurant details can be edited' do
  scenario 'lets user edit the restaurant' do
    visit '/restaurants/new'
    fill_in :"restaurant[name]", with: "Restaurant to be edited"
    fill_in :"restaurnt[description]", with: "Description to be edited"
    click_button "Save Restaurant"
    click_link "edit"
    fill_in :"restaurant[name]", with: 'Buhhha'
    fill_in :"restaurant[description]", with: 'Amazing'
    click_button 'Update Restaurant'

    expect(page).to have_content('Buhhha')
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
  end
end
