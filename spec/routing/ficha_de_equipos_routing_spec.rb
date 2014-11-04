require "rails_helper"

RSpec.describe FichaDeEquiposController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ficha_de_equipos").to route_to("ficha_de_equipos#index")
    end

    it "routes to #new" do
      expect(:get => "/ficha_de_equipos/new").to route_to("ficha_de_equipos#new")
    end

    it "routes to #show" do
      expect(:get => "/ficha_de_equipos/1").to route_to("ficha_de_equipos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ficha_de_equipos/1/edit").to route_to("ficha_de_equipos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ficha_de_equipos").to route_to("ficha_de_equipos#create")
    end

    it "routes to #update" do
      expect(:put => "/ficha_de_equipos/1").to route_to("ficha_de_equipos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ficha_de_equipos/1").to route_to("ficha_de_equipos#destroy", :id => "1")
    end

  end
end
