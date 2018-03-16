require 'rails_helper.rb'

feature 'Welcome page' do
  scenario 'Shows the home page' do
    visit '/'
    expect(page).to have_content("Review a restaurant.")
  end
end
