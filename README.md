---
language: ruby
tags: sinatra, forms, hashes, object orientation, mvc, rest, erb
---

# Sinatra Pigeon

# Deliverables

Create a Sinatra Web Application that allows us to browse a list of all pigeons, create new pigeons, see individual pigeons and their characteristics on their own, edit a pigeon, and delete pigeons.

# Instructions

First fork this repo. 
Then clone your fork and cd into that directory.

From terminal run the folling commands:

1. `bundle install`
2. `rake reset`
3. `rake setup`
4. `rake seed`

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

Fill in these views with the appropriate ERB code and HTML to match the example solution at: [http://sinatra-pigeon.herokuapp.com/](http://sinatra-pigeon.herokuapp.com/)

Run `rackup` or `rake server` in terminal to test out the web app at localhost:9292 

Deliver your solution in master branch by pushing to your personal github repo and paste repo URL into the Piazza post for this HW.
