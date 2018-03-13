require 'rails_helper.rb'
feature "Reviews" do
  scenario "user can add restaurant reviews" do
    visit '/restaurants'
    click_link 'Review'
    fill_in 'input', with: 'Yummy yummy food'
    click_on 'Submit'
    expect(page).to have_content('Yummy yummy food')
  end
end
