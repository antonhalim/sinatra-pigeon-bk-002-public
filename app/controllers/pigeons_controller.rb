class PigeonsController < ApplicationController

	get '/pigeons' do
		erb :'pigeons/index'
	end

	get '/pigeons/new' do
		erb :'pigeons/new'
	end

	post '/pigeons' do
		params.delete("create")
		Pigeon.create(params)
		redirect :"/pigeons"
	end

	get '/pigeons/:id' do
		@pigeon = Pigeon.find(params["id"])
		erb :'pigeons/show'
	end

	get '/pigeons/:id/edit' do
		@pigeon = Pigeon.find(params["id"])
		erb :'pigeons/edit'
	end

	patch '/pigeons/:id' do
		@pigeon = Pigeon.find(params["id"])
		@pigeon.name = params["name"]
		@pigeon.gender = params["gender"]
		@pigeon.color = params["color"]
		@pigeon.lives = params["lives"]
		@pigeon.save
		redirect :"/pigeons/#{@pigeon.id}"
	end

	delete '/pigeons/:id' do
		Pigeon.delete(params["id"])
		redirect :"/pigeons"
	end

end
