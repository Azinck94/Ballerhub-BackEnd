require "rails_helper"

RSpec.describe BallersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ballers").to route_to("ballers#index")
    end

    it "routes to #new" do
      expect(:get => "/ballers/new").to route_to("ballers#new")
    end

    it "routes to #show" do
      expect(:get => "/ballers/1").to route_to("ballers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ballers/1/edit").to route_to("ballers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ballers").to route_to("ballers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ballers/1").to route_to("ballers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ballers/1").to route_to("ballers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ballers/1").to route_to("ballers#destroy", :id => "1")
    end

  end
end
