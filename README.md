---
  language: ruby
  tags: sinatra, forms, hashes, object orientation, mvc, rest, erb
  resources: 2
---

# Sinatra Pigeon

# Deliverables

Create a Sinatra Web Application that allows us to browse a list of all pigeons, create new pigeons, see individual pigeons and their characteristics on their own, edit a pigeon, and delete pigeons.

# Instructions

* Fork this repo. 
* Clone your fork and cd into the newly created directory.
* From terminal run `bundle install`. 
* To view a list of available rake tasks, run `rake -T`.
* Write your migration for pigeons. Take a look at `db/seeds.rb` for table's structure hints.
* In `app/models/pigeons.rb`, write your pigeon model.

In file /app/controllers/pigeons_controller.rb make use of the appropriate RESTful paths to create, read, update, and destroy pigeons. Include the following paths

- /pigeons
- /pigeons/new
- /pigeons/:id
- /pigeons/:id/edit
- /pigeons/:id/update
- /pigeons/:id/destroy

These routes will map to the appropriate views /app/views/pigeons

- index.erb
- new.erb
- show.erb
- edit.erb

Fill in these views with the appropriate ERB code and HTML to match the example solution at: [http://sinatra-pigeon.herokuapp.com/](http://sinatra-pigeon.herokuapp.com/).

Run `shotgun` in terminal to test out the web app at [localhost:9393/](http://localhost:9393/).

## Resources
* [Heroku](http://www.heroku.com/) - [Pigeon App](http://sinatra-pigeon.herokuapp.com/pigeons)
* [Screencasts](http://screencasts.org/) - [Using ActiveRecord with Sinatra](http://screencasts.org/episodes/activerecord-with-sinatra)
