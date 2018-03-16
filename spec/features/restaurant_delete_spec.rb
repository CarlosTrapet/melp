require 'rails_helper'

feature 'delete a restaurant' do
  scenario 'removes restaurant from database' do
    sign_up
    create_new_restaurant
    click_link 'Delete'
    expect(page).to have_current_path '/restaurants'
    expect(page).not_to have_content 'The Fat Duck'
  end
end
