require 'bundler'

environment = ENV['RACK_ENV'] || 'development'

Bundler.require(:default, environment)

if ENV['RACK_ENV'] == 'production'
  DataMapper.setup(:default, ENV['DATABASE_URL'])
else # development or testing only
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/pigeons.db")
end

require_relative '../app/models/pigeon'
require_relative '../app/controllers/pigeons_controller'