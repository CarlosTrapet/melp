def create_new_restaurant
  visit '/restaurants/new'
  fill_in :"restaurant[name]", with: "The Fat Duck"
  fill_in :"restaurant[description]", with: "Avante garde snacks"
  click_button "Save Restaurant"
end

def create_invalid_restaurant
  visit '/restaurants/new'
  fill_in :"restaurant[name]", with: "The Fat Duck"
  fill_in :"restaurant[description]", with: ""
  click_button "Save Restaurant"
end

def create_new_review
  fill_in 'review[reviewer]', with: 'Test Reviewer'
  fill_in 'review[score]', with: 5
  fill_in 'review[body]', with: 'Test body'
  click_on 'Create Review'
end

def create_invalid_review
  fill_in 'review[reviewer]', with: 'Test Reviewer'
  fill_in 'review[score]', with: 5
  fill_in 'review[body]', with: ''
  click_on 'Create Review'
end

def sign_up
  visit '/restaurants'
  click_link 'Sign up'
  fill_in 'user[email]', with: 'monroe@example.com'
  fill_in 'user[password]', with: 'example'
  fill_in 'user[password_confirmation]', with: 'example'
  click_button 'Sign up'
end
