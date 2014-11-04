require 'rails_helper'

RSpec.describe "zonas/new", :type => :view do
  before(:each) do
    assign(:zona, Zona.new(
      :nombre => 1,
      :area_pt => 1
    ))
  end

  it "renders new zona form" do
    render

    assert_select "form[action=?][method=?]", zonas_path, "post" do

      assert_select "input#zona_nombre[name=?]", "zona[nombre]"

      assert_select "input#zona_area_pt[name=?]", "zona[area_pt]"
    end
  end
end
