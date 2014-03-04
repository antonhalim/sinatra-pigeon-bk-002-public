require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "development"
)

require_relative '../app/models/pigeon'
require_relative '../app/controllers/pigeons_controller'