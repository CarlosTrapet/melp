require 'rails_helper.rb'

feature 'Create a restaurant' do
  scenario 'Displays restaurant created' do
    sign_up
    create_new_restaurant
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
    expect(page).to have_content "The Fat Duck"
    expect(page).to have_content "Avante garde snacks"
  end

  scenario "Displays an error message when new restaurant is invalid" do
    sign_up
    create_invalid_restaurant
    expect(page).not_to have_content("The Fat Duck")
    expect(page).to have_content("Description can't be blank")
  end
end
