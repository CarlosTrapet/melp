require 'rails_helper.rb'
require_relative '../web_helpers.rb'

feature "Reviews" do
  scenario "user can add restaurant reviews" do
    create_new_restaurant
    fill_in 'review[reviewer]', with: 'Luke'
    fill_in 'review[score]', with: 2
    fill_in 'review[body]', with: 'Yummy yummy food'
    click_on 'Create Review'
    expect(page).to have_content('Yummy yummy food')
  end
end
