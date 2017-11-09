
def sign_in_and_play
  visit "/"
  fill_in('player_1', with: 'eva')
  fill_in('player_2', with: 'andrew')
  click_on "Submit"
end
