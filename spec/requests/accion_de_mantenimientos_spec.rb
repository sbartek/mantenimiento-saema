require 'rails_helper'

RSpec.describe "AccionDeMantenimientos", :type => :request do
  describe "GET /accion_de_mantenimientos" do
    it "works! (now write some real specs)" do
      get accion_de_mantenimientos_path
      expect(response).to have_http_status(200)
    end
  end
end
