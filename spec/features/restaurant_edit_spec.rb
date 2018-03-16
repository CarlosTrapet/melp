require 'rails_helper.rb'
feature 'Restaurant details can be edited' do
  scenario 'lets user edit the restaurant' do
    sign_up
    create_new_restaurant
    click_link "Edit"
    fill_in :"restaurant[name]", with: 'Buhhha'
    fill_in :"restaurant[description]", with: 'Amazing'
    click_button 'Update Restaurant'
    expect(page).to have_content('Buhhha')
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
  end
end
