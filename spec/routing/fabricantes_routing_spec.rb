require "rails_helper"

RSpec.describe FabricantesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fabricantes").to route_to("fabricantes#index")
    end

    it "routes to #new" do
      expect(:get => "/fabricantes/new").to route_to("fabricantes#new")
    end

    it "routes to #show" do
      expect(:get => "/fabricantes/1").to route_to("fabricantes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fabricantes/1/edit").to route_to("fabricantes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fabricantes").to route_to("fabricantes#create")
    end

    it "routes to #update" do
      expect(:put => "/fabricantes/1").to route_to("fabricantes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fabricantes/1").to route_to("fabricantes#destroy", :id => "1")
    end

  end
end
