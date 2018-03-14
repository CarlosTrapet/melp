require 'rails_helper.rb'
feature 'Restaurant details can be edited' do
  scenario 'lets user edit the restaurant' do
    visit '/restaurants'
    click_link "1"
    fill_in :"restaurant[name]", with: 'Buhhha'
    fill_in :"restaurant[description]", with: 'Amazing'
    click_button 'Submit'
    
    expect(page).to have_content('Buhhha')
    expect(page).to have_current_path '/restaurants/1'
  end
end
