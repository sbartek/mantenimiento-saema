require 'rails_helper'

RSpec.describe "ubicaciones/edit", :type => :view do
  before(:each) do
    @ubicacion = assign(:ubicacion, Ubicacion.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit ubicacion form" do
    render

    assert_select "form[action=?][method=?]", ubicacion_path(@ubicacion), "post" do

      assert_select "input#ubicacion_nombre[name=?]", "ubicacion[nombre]"
    end
  end
end
