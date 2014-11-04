require 'rails_helper'

RSpec.describe "FichaDeEquipos", :type => :request do
  describe "GET /ficha_de_equipos" do
    it "works! (now write some real specs)" do
      get ficha_de_equipos_path
      expect(response).to have_http_status(200)
    end
  end
end
