require 'sinatra/base'
require 'battleships'
<<<<<<< HEAD


=======
>>>>>>> fee057eb1f2ec3a5282df6627bd584128b2c9096

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  set :views, proc {File.join(root,'..','views')}

  get '/name' do
    erb :name
  end

  get '/welcome' do
    @player_name = params[:name]
    $game = Game.new Player, Board    
    erb :welcome
    $game = Game.new Player, Board
  end

  get '/board' do
    erb :board
  end

  get '/board' do
    erb :board
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
