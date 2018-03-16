require 'rails_helper.rb'

feature "Create a review" do
  scenario "When review input valid" do
    sign_up
    create_new_restaurant
    create_new_review
    expect(page).to have_content('Test body')
  end

  scenario "When review input invalid refreshes the page and redirects to restaurants#show" do
    sign_up
    create_new_restaurant
    create_invalid_review
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
    expect(page).not_to have_content('Test Reviewer')
  end

  scenario "Adding review displays user's email" do
    sign_up
    create_new_restaurant
    create_new_review
    expect(page).to have_current_path(/restaurants\/[0-9]+/)
    expect(page).to have_content('monroe@example.com')
  end

end
