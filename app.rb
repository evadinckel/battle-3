require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/battle' do
    'Testing infrastructure working!'
  end

  $hp2 = 100

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
    erb(:play)
  end

post '/attack_player_2' do
  Game.new($first_player, $second_player).attack
  redirect to('/play')
end


  run! if app_file == $0

end
