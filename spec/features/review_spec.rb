require 'rails_helper.rb'
feature "Reviews" do
  scenario "user can add restaurant reviews" do
    visit '/restaurants/new'
    fill_in :"restaurant[name]", with: "The Fat Duck"
    fill_in :"restaurant[description]", with: "Avante garde snacks"
    click_button "Save Restaurant"
    fill_in 'review[reviewer]', with: 'Luke'
    fill_in 'review[score]', with: 2
    fill_in 'review[body]', with: 'Yummy yummy food'
    click_on 'Create Review'
    expect(page).to have_content('Yummy yummy food')
  end
end
