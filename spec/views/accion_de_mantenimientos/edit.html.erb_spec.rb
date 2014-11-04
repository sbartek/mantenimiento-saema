require 'rails_helper'

RSpec.describe "accion_de_mantenimientos/edit", :type => :view do
  before(:each) do
    @accion_de_mantenimiento = assign(:accion_de_mantenimiento, AccionDeMantenimiento.create!(
      :ficha_de_equipo_id => 1,
      :periodicidad => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit accion_de_mantenimiento form" do
    render

    assert_select "form[action=?][method=?]", accion_de_mantenimiento_path(@accion_de_mantenimiento), "post" do

      assert_select "input#accion_de_mantenimiento_ficha_de_equipo_id[name=?]", "accion_de_mantenimiento[ficha_de_equipo_id]"

      assert_select "input#accion_de_mantenimiento_periodicidad[name=?]", "accion_de_mantenimiento[periodicidad]"

      assert_select "textarea#accion_de_mantenimiento_descripcion[name=?]", "accion_de_mantenimiento[descripcion]"
    end
  end
end
