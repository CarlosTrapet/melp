require "rails_helper.rb"

feature "signing up" do
  scenario "user can sign up" do
    sign_up
    expect(page).to have_current_path('/restaurants')
    expect(page).to have_content('Signed in as: monroe@example.com')
  end
end
