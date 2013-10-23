---
language: ruby
tags: sinatra, forms, hashes, object orientation, mvc, rest, erb
___

# Sinatra Pigeon

# Goal

Create a Sinatra Web Application that allows us to browse a list of all pigeons, create new pigeons, see individual pigeons and their characteristics on their own, edit a pigeon, and delete pigeons.

# Details

First fork this repo. Then clone your fork.
Using the "pigeon_list" hash at bottom to populate your database. Create a controller that makes use of RESTful URLs to create, read, update, and destroy pigeons.

You should have the following URLs:

- /pigeons #=> shows a list of all pigeons maps to index.erb

- /pigeons/1 #=> shows the pigeon with an id of 1 (should be able to change the number to map to any pidgeon with any id) maps to show.erb

- /pigeons/new #=> shows a form to create a new pigeon. the should post to /pigeons which will write the new pigeon to the database and then redirect the user back to the index list page.

- /pigeons/1/edit #=> shows an edit form for the pigeon with id of 1 displaying all attributes already filled in the form fields. Form will post to /pigeons/1/update to write the updated params for the pigeon and then redirect the user back to the index list page.

- /pigeons/1/destroy #=> will remove the pigeon from the database and then redirect the user back to the index list page.

Checkout the working solution example at: [http://sinatra-pigeon.herokuapp.com/](http://sinatra-pigeon.herokuapp.com/)

```
pigeon_list = {
    "Theo" => {
      :color => ["purple", "grey"],
      :gender => "male",
      :lives => "Subway"
    },
    "Peter Jr." => {
      :color => ["purple", "grey"],
      :gender => "male",
      :lives => "Library"
    },
    "Lucky" => {
      :color => ["purple"],
      :gender => "male",
      :lives => "City Hall"
    },
    "Ms .K" => {
      :color => ["grey", "white"],
      :gender => "female",
      :lives => "Central Park"
    },
    "Queenie" => {
      :color => ["white", "brown"],
      :gender => "female",
      :lives => "Subway"
    },
    "Andrew" => {
      :color => ["white"],
      :gender => "male",
      :lives => "Central Park"
    }
    "Alex" => {
      :color => ["white", "brown"],
      :gender => "male",
      :lives => "Central Park"
    }
  }
```
