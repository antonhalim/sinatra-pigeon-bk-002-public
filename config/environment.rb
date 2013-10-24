require 'bundler'

Bundler.require

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/pigeons.db")

require_relative '../app/models/pigeon'
require_relative '../app/controllers/pigeons_controller'