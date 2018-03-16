require "rails_helper.rb"

feature "Deleting reviews" do
  scenario "user can delete review" do
    sign_up
    create_new_restaurant
    create_new_review
    click_on 'Delete Review'
    expect(page).not_to have_content('Test Reviewer')
  end
end
