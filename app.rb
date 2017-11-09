require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/battle' do
    'Testing infrastructure working!'
  end
  $hp1 = 100
  $hp2 = 100
  $count = 1

  get '/' do
    erb(:index)
  end

  post '/names' do
    $first_player = Player.new(params[:player_1])
    $second_player = Player.new(params[:player_2])
    $game = Game.new($first_player, $second_player)
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.return_name_1
    @player_2 = $game.return_name_2
    @player_2_hit_points = $hp2
    @player_1_hit_points = $hp1
    @turn = $count
    erb(:play)
  end

post '/attack_player_2' do
  $game.attack_2
  $game.switch_turn
  redirect to('/play')
end

post '/attack_player_1' do
  $game.attack_1
  $game.switch_turn
  redirect to('/play')
end

  run! if app_file == $0

end
