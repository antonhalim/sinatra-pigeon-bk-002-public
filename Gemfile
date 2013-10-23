source 'https://rubygems.org'

ruby '2.0.0'

gem 'data_mapper'
gem 'sinatra'

group :development, :test  do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter'
  gem 'sinatra-reloader'
  gem 'pry'
end

group :production  do
  gem 'pg'
  gem 'dm-postgres-adapter'
end
