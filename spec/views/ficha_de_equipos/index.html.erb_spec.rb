require 'rails_helper'

RSpec.describe "ficha_de_equipos/index", :type => :view do
  before(:each) do
    assign(:ficha_de_equipos, [
      FichaDeEquipo.create!(
        :nombre => "Nombre",
        :descripcion_tecnica => "MyText",
        :ref_modelo => "Ref Modelo",
        :fabricante_id => 1,
        :proveedor_id => 2,
        :marca_id => 3
      ),
      FichaDeEquipo.create!(
        :nombre => "Nombre",
        :descripcion_tecnica => "MyText",
        :ref_modelo => "Ref Modelo",
        :fabricante_id => 1,
        :proveedor_id => 2,
        :marca_id => 3
      )
    ])
  end

  it "renders a list of ficha_de_equipos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ref Modelo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
