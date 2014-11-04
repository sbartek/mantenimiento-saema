require 'rails_helper'

RSpec.describe "ficha_de_equipos/edit", :type => :view do
  before(:each) do
    @ficha_de_equipo = assign(:ficha_de_equipo, FichaDeEquipo.create!(
      :nombre => "MyString",
      :descripcion_tecnica => "MyText",
      :ref_modelo => "MyString",
      :fabricante_id => 1,
      :proveedor_id => 1,
      :marca_id => 1
    ))
  end

  it "renders the edit ficha_de_equipo form" do
    render

    assert_select "form[action=?][method=?]", ficha_de_equipo_path(@ficha_de_equipo), "post" do

      assert_select "input#ficha_de_equipo_nombre[name=?]", "ficha_de_equipo[nombre]"

      assert_select "textarea#ficha_de_equipo_descripcion_tecnica[name=?]", "ficha_de_equipo[descripcion_tecnica]"

      assert_select "input#ficha_de_equipo_ref_modelo[name=?]", "ficha_de_equipo[ref_modelo]"

      assert_select "input#ficha_de_equipo_fabricante_id[name=?]", "ficha_de_equipo[fabricante_id]"

      assert_select "input#ficha_de_equipo_proveedor_id[name=?]", "ficha_de_equipo[proveedor_id]"

      assert_select "input#ficha_de_equipo_marca_id[name=?]", "ficha_de_equipo[marca_id]"
    end
  end
end
