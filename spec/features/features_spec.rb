require './app.rb'

# let(:named_players)do
#   visit "/"
#   fill_in('player_1', with: 'eva')
#   fill_in('player_2', with: 'andrew')
#   click_button "Submit"
# end

RSpec.feature "battle page test", :type => :feature do
  scenario "Viewing the page" do
    visit "/battle"
    expect(page).to have_content('Testing infrastructure working!')
  end
end

RSpec.feature "enter player names" do
  let(:named_players)do
    visit "/"
    fill_in('player_1', with: 'eva')
    fill_in('player_2', with: 'andrew')
    click_button "Submit"
  end
  scenario "Getting player two's name" do
    named_players
    expect(page).to have_content('andrew')
  end
  scenario "Getting player one's name" do
    named_players
    expect(page).to have_content('eva')
  end
end

RSpec.feature "viewing hit points" do
  let(:named_players)do
    visit "/"
    fill_in('player_1', with: 'eva')
    fill_in('player_2', with: 'andrew')
    click_button "Submit"
  end
  scenario "allowing player 1 to see player 2's hit points" do
    named_players
    expect(page).to have_content('hit points: 100')
  end

end
