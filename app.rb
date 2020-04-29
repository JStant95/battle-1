require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['player_1'] = params['player_1']
    session['player_2'] = params['player_2']
    redirect "/play"
  end

  get '/play' do
    erb(:play)
  end

  post '/Start' do
    erb(:start)
  end

  get '/attack' do 
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
