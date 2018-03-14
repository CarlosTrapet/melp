require "rails_helper.rb"
feature "Input is validated" do
  scenario "when user doesn't enter input " do
    visit '/restaurants/new'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: "Avante garde snacks"
    click_button "Save Restaurant"
    fill_in 'review[reviewer]', with: 'Test Reviewer'
    fill_in 'review[body]', with: ''
    click_on 'Create Review'
    expect(page).not_to have_content('Test Reviewer')
  end
end
