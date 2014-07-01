require 'spec_helper'

describe "PigeonsController" do
  describe "index page: GET /pigeons" do
    before do
      Pigeon.create(name: "Cher Ami" , color: "red, grey", lives: "Paris"        , gender: "female")
      Pigeon.create(name: "G. I. Joe", color: "pink, tan", lives: "Great Britain", gender: "male"  )
      get '/pigeons'
    end

    it "responds with a 200 status code" do
      expect(last_response).to be_ok
    end

    it "renders the pigeon index template" do
      expect(last_response.body).to include("Cher Ami")
      expect(last_response.body).to include("G. I. Joe")
    end
  end

  describe "show page: GET /pigeons/:id/" do
    before do
      cher = Pigeon.create(name:  "Cher Ami", color: "red, grey", lives: "Paris",         gender: "female")
      get "/pigeons/#{cher.id}"
    end

    it "responds with a 200 status code" do
      expect(last_response).to be_ok
    end

    it "renders the show page for the pigeons's list of attributes" do
      expect(last_response.body).to include("Cher Ami")
      expect(last_response.body).to include("red, grey")
      expect(last_response.body).to include("Paris")
    end
  end

  describe "edit page: GET /pigeons/:id/edit" do
    before do
      cher = Pigeon.create(name:  "Cher Ami", color: "red, grey", lives: "Paris",         gender: "female")
      get "/pigeons/#{cher.id}/edit"
    end

    it "responds with a 200 status code" do
      expect(last_response).to be_ok
    end

    it "renders the show page for the pigeons's list of attributes" do
      expect(last_response.body).to include("Cher Ami")
      expect(last_response.body).to include("red, grey")
      expect(last_response.body).to include("Paris")
    end
  end


end