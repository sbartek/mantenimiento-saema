require 'rails_helper'

RSpec.describe "zonas/edit", :type => :view do
  before(:each) do
    @zona = assign(:zona, Zona.create!(
      :nombre => 1,
      :area_pt => 1
    ))
  end

  it "renders the edit zona form" do
    render

    assert_select "form[action=?][method=?]", zona_path(@zona), "post" do

      assert_select "input#zona_nombre[name=?]", "zona[nombre]"

      assert_select "input#zona_area_pt[name=?]", "zona[area_pt]"
    end
  end
end
