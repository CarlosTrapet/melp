require 'rails_helper.rb'

feature 'test' do
  scenario 'filter_gems_from_backtrace' do
    visit '/'
    expect(page).to have_content("Yay")
  end
end
