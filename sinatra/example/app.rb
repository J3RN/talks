require 'sinatra/base'

class MyApp < Sinatra::Application
  set :static, true

  get '/' do
    erb :index#, layout: :main_layout
  end

  # run! if app_file == $0
end
