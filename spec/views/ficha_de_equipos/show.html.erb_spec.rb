require 'rails_helper'

RSpec.describe "ficha_de_equipos/show", :type => :view do
  before(:each) do
    @ficha_de_equipo = assign(:ficha_de_equipo, FichaDeEquipo.create!(
      :nombre => "Nombre",
      :descripcion_tecnica => "MyText",
      :ref_modelo => "Ref Modelo",
      :fabricante_id => 1,
      :proveedor_id => 2,
      :marca_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ref Modelo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
