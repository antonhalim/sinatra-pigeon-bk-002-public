class PigeonsController < ApplicationController

  get '/pigeons' do 
    @pigeons = Pigeon.all
    binding.pry
    erb :'pigeons/index'
  end

end