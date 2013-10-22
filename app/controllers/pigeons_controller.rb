class PigeonsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  set :views, Proc.new { File.join(root, "../views/") }

  #root
  get '/' do
    redirect to('/pigeons')
  end

  #index
  get '/pigeons' do
    @pigeons = Pigeon.all
    erb :'pigeons/index'
  end

  #new
  get '/pigeons/new' do
    erb :'pigeons/new'
  end

  #show
  get '/pigeons/:id' do
    @pigeon = Pigeon.get(params[:id])
    erb :'pigeons/show'
  end

  #edit
  get '/pigeons/:id/edit' do
    @pigeon = Pigeon.get(params[:id])
    erb :'pigeons/edit'
  end

  #create
  post '/pigeons' do
    p = Pigeon.new
    p.name = params[:name]
    p.gender = params[:gender]
    p.color = []
    p.color << params[:color]
    p.lives = params[:lives]
    if p.save
      redirect to('/pigeons')
    else
      "Error unable to save!"
    end
  end

  #update
  post '/pigeons/:id/update' do
    p = Pigeon.get(params[:id])
    p.name = params[:name]
    p.gender = params[:gender]
    p.color ||= []
    p.color << params[:color]
    p.lives = params[:lives]
    if p.save
      redirect to('/pigeons')
    else
      "Error - unable to save!"
    end
  end

  #destroy
  post '/pigeons/:id/destroy' do
    p = Pigeon.get(params[:id])
    if p.destroy
      redirect to('/pigeons')
    else
      "Error - unable to destroy!"
    end
  end

end