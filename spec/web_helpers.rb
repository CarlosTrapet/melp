def create_new_restaurant 
  visit '/restaurants/new'
  fill_in :"restaurant[name]", with: "The Fat Duck"
  fill_in :"restaurant[description]", with: "Avante garde snacks"
  click_button "Save Restaurant"  
end

def create_new_review
  fill_in 'review[reviewer]', with: 'Test Reviewer'
  fill_in 'review[score]', with: 5
  fill_in 'review[body]', with: 'Test body'
  click_on 'Create Review'  
end