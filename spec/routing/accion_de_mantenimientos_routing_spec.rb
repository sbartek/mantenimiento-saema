require "rails_helper"

RSpec.describe AccionDeMantenimientosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/accion_de_mantenimientos").to route_to("accion_de_mantenimientos#index")
    end

    it "routes to #new" do
      expect(:get => "/accion_de_mantenimientos/new").to route_to("accion_de_mantenimientos#new")
    end

    it "routes to #show" do
      expect(:get => "/accion_de_mantenimientos/1").to route_to("accion_de_mantenimientos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/accion_de_mantenimientos/1/edit").to route_to("accion_de_mantenimientos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/accion_de_mantenimientos").to route_to("accion_de_mantenimientos#create")
    end

    it "routes to #update" do
      expect(:put => "/accion_de_mantenimientos/1").to route_to("accion_de_mantenimientos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/accion_de_mantenimientos/1").to route_to("accion_de_mantenimientos#destroy", :id => "1")
    end

  end
end
