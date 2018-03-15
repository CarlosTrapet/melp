require "rails_helper.rb"
require_relative "../web_helpers.rb"

feature "User inputs invalid review" do
  scenario "refreshes the page and gets redirected to restaurants#show" do
    create_new_restaurant
    create_invalid_review
    expect(page).to have_current_path(/restaurants\/[0-9]+/)    
    expect(page).not_to have_content('Test Reviewer')
  end
end



