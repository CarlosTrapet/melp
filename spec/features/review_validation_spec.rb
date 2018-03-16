require "rails_helper.rb"
feature "Input is validated" do
  scenario "when user doesn't enter input " do
    sign_up
    create_new_restaurant
    create_invalid_review
    expect(page).not_to have_content('Test Reviewer')
  end
end
