require 'rails_helper.rb'

feature 'Create a restaurant' do
  scenario 'Displays restaurant created' do
    visit '/restaurants'
    click_link 'Add Restaurant'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: "Avante garde snacks"
    click_button "Save Restaurant"
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
    expect(page).to have_content "The Fat Duck"
    expect(page).to have_content "Avante garde snacks"
  end

  scenario "Displays an error message when new restaurant is invalid" do
    visit '/restaurants'
    click_link 'Add Restaurant'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: ""
    click_button "Save Restaurant"
    expect(page).not_to have_content("The Fat Duck")
    expect(page).to have_content("Description can't be blank")
  end
end
