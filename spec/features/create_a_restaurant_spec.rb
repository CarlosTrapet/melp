require 'rails_helper.rb'

feature 'Create a restaurant' do
  scenario 'Displays restaurant created' do
    visit '/restaurants/new'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: "Avante garde snacks"
    click_button "Save Restaurant"
    expect(current_path).toEqual "restaurants/1"
    expect(page).to have_content "The Fat Duck"
    expect(page).to have_content "Avante garde snacks"
  end
end
