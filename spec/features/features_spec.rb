require './app.rb'


RSpec.feature "battle page test", :type => :feature do
  scenario "Viewing the page" do
    visit "/battle"
    expect(page).to have_content('Testing infrastructure working!')
  end
end

RSpec.feature "play page test", :type => :feature do
  scenario "Getting player two's name" do
    visit "/"
    fill_in('player_1', with: 'eva')
    fill_in('player_2', with: 'andrew')
    click_button "Submit"
    expect(page).to have_content('andrew')
  end
  scenario "Getting player one's name" do
    visit "/"
    fill_in('player_1', with: 'eva')
    fill_in('player_2', with: 'andrew')
    click_button "Submit"
    expect(page).to have_content('eva')
  end
end
