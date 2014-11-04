require 'rails_helper'

RSpec.describe "Equipos", :type => :request do
  describe "GET /equipos" do
    it "works! (now write some real specs)" do
      get equipos_path
      expect(response).to have_http_status(200)
    end
  end
end
