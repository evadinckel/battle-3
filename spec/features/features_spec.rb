require './app.rb'


RSpec.feature "battle page test", :type => :feature do
  scenario "Viewing the page" do
    visit "/battle"
expect(page).to have_content('Testing infrastructure working!')
end
end

RSpec.feature "battle page test", :type => :feature do
  scenario "Viewing the page" do
    visit "/"
    fill_in('player_1', with: 'eva')
    fill_in('player_2', with: 'andrew')
  end
end
