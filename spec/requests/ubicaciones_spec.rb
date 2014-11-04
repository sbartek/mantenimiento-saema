require 'rails_helper'

RSpec.describe "Ubicaciones", :type => :request do
  describe "GET /ubicaciones" do
    it "works! (now write some real specs)" do
      get ubicaciones_path
      expect(response).to have_http_status(200)
    end
  end
end
