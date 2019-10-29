require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    pig = PigLatinizer.new
    @original = params[:user_phrase]
    @pig_latin = pig.piglatinize(params[:user_phrase])

    erb :show
  end
end
