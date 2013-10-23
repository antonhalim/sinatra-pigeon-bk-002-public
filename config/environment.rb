require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'].to_sym)

if ENV['RACK_ENV'] == 'production'
  DataMapper.setup(:default, ENV['DATABASE_URL'])
else # development or testing only
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite:///Users/jonathangrover/dev/fis/sinatra-pigeon/db/pigeons.db')  
end

require_relative '../app/models/pigeon'
require_relative '../app/controllers/pigeons_controller'