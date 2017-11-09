require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/battle' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:hp2] = 100
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_2_hit_points = session[:hp2]
    erb(:play)
  end

post '/attack_player_2' do
  session[:hp2] -= 10
  redirect to('/play')
end


  run! if app_file == $0

end
