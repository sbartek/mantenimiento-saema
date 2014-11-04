require 'rails_helper'

RSpec.describe "equipos/show", :type => :view do
  before(:each) do
    @equipo = assign(:equipo, Equipo.create!(
      :ficha_de_equipo_id => 1,
      :ubicacion_id => 2,
      :unidades => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
