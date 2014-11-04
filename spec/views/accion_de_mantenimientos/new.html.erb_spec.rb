require 'rails_helper'

RSpec.describe "accion_de_mantenimientos/new", :type => :view do
  before(:each) do
    assign(:accion_de_mantenimiento, AccionDeMantenimiento.new(
      :ficha_de_equipo_id => 1,
      :periodicidad => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders new accion_de_mantenimiento form" do
    render

    assert_select "form[action=?][method=?]", accion_de_mantenimientos_path, "post" do

      assert_select "input#accion_de_mantenimiento_ficha_de_equipo_id[name=?]", "accion_de_mantenimiento[ficha_de_equipo_id]"

      assert_select "input#accion_de_mantenimiento_periodicidad[name=?]", "accion_de_mantenimiento[periodicidad]"

      assert_select "textarea#accion_de_mantenimiento_descripcion[name=?]", "accion_de_mantenimiento[descripcion]"
    end
  end
end
