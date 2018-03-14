require 'rails_helper'

def populate_restaurant_db
  visit '/restaurants/new'
  fill_in :"restaurant[name]", with: "The Fat Duck"
  fill_in :"restaurant[description]", with: "Avante garde snacks"
  click_button 'Save Restaurant'
end
