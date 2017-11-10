require './app.rb'



RSpec.feature "battle page test", :type => :feature do
  scenario "Viewing the page" do
    visit "/battle"
    expect(page).to have_content('Testing infrastructure working!')
  end
end

RSpec.feature "enter player names" do
  scenario "Getting player two's name" do
    sign_in_and_play
    expect(page).to have_content('andrew')
  end
  scenario "Getting player one's name" do
    sign_in_and_play
    expect(page).to have_content('eva')
  end
end

RSpec.feature "viewing hit points" do
  scenario "allowing player 1 to see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('hit points: 100')
  end
end

RSpec.feature "attacking a player" do
  scenario "clicking button to attack and get confirmation" do
    sign_in_and_play
    click_on('attack')
    expect(page).to have_content('hit points 90')
  end
  scenario "getting attacked player conformation" do
    sign_in_and_play
    click_on('attack')
    expect(page).to have_content('eva has attacked andrew')
  end
  scenario "someone loses" do
    sign_in_and_play
    19.times {click_on('attack')}
    expect(page).to have_content('andrew loses')
  end
end
