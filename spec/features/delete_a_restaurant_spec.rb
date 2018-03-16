require 'rails_helper'
require_relative '../helpers/populate_test_database.rb'

feature 'delete a restaurant' do
  scenario 'removes restaurant from database' do
    populate_restaurant_db
    click_link 'Delete'
    expect(page).to have_current_path '/restaurants'
    expect(page).not_to have_content 'The Fat Duck'
  end
end
