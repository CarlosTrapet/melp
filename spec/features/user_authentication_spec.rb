require "rails_helper.rb"

feature "Logging in" do
  scenario "user can not view Restaurants when not signed in" do
    visit '/restaurants'
    expect(page).to have_content('Log in')
  end
end
