require 'rails_helper'

RSpec.describe "ubicaciones/new", :type => :view do
  before(:each) do
    assign(:ubicacion, Ubicacion.new(
      :nombre => "MyString"
    ))
  end

  it "renders new ubicacion form" do
    render

    assert_select "form[action=?][method=?]", ubicaciones_path, "post" do

      assert_select "input#ubicacion_nombre[name=?]", "ubicacion[nombre]"
    end
  end
end
