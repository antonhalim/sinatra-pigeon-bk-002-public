class PigeonsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  set :views, Proc.new { File.join(root, "../views/") }

  # start creating routes here such as get '/' do etc...


end