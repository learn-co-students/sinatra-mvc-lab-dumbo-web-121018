require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = PigLatinizer.new
    @phrase = @user_phrase.piglatinize(params[:user_phrase])
    erb :pig_latin
  end
end
