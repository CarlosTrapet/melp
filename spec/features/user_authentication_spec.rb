require "rails_helper.rb"
require_relative "../web_helpers.rb"

feature "Logging in" do
  scenario "user can not add a Restaurant when not signed in" do
    visit '/restaurants'
    expect(page).to have_content('Remember me')
  end
end