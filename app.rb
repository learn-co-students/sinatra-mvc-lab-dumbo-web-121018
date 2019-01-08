require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_phrase = PigLatinizer.new
    @pig_phrase.piglatinize(params[:user_phrase])
  end
end
