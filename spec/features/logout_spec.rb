require "rails_helper.rb"

feature "Sign out" do
  scenario "user can sign out" do
    sign_up
    click_link "Sign out"
    click_on "home"
    expect(page).to have_content("Log in")
  end
end
