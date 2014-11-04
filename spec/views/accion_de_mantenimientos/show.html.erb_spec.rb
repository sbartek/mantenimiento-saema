require 'rails_helper'

RSpec.describe "accion_de_mantenimientos/show", :type => :view do
  before(:each) do
    @accion_de_mantenimiento = assign(:accion_de_mantenimiento, AccionDeMantenimiento.create!(
      :ficha_de_equipo_id => 1,
      :periodicidad => "Periodicidad",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Periodicidad/)
    expect(rendered).to match(/MyText/)
  end
end
