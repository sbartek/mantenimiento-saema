require "rails_helper"

RSpec.describe UbicacionesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ubicaciones").to route_to("ubicaciones#index")
    end

    it "routes to #new" do
      expect(:get => "/ubicaciones/new").to route_to("ubicaciones#new")
    end

    it "routes to #show" do
      expect(:get => "/ubicaciones/1").to route_to("ubicaciones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ubicaciones/1/edit").to route_to("ubicaciones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ubicaciones").to route_to("ubicaciones#create")
    end

    it "routes to #update" do
      expect(:put => "/ubicaciones/1").to route_to("ubicaciones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ubicaciones/1").to route_to("ubicaciones#destroy", :id => "1")
    end

  end
end
