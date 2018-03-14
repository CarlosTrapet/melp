require "rails_helper.rb"
feature "Deleting reviews" do
  scenario "user can delete review" do
    visit '/restaurants/new'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: "Avante garde snacks"
    click_button "Save Restaurant"
    fill_in 'review[reviewer]', with: 'Test Reviewer'
    fill_in 'review[score]', with: 5
    fill_in 'review[body]', with: 'Test body'
    click_on 'Create Review'
    click_on 'Delete Review'
    expect(page).not_to have_content('Test Reviewer')
  end
end