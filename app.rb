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
    $name_of_player1 = Player.new(params[:player_1])
    $name_of_player2 = Player.new(params[:player_2])

    redirect to('/play')
  end

  get '/play' do
    @player_1 = $name_of_player1.return_name
    @player_2 = $name_of_player2.return_name
    @player_2_hit_points = $hp2
    erb(:play)
  end

post '/attack_player_2' do
  Game.new.attack
  redirect to('/play')
end


  run! if app_file == $0

end
