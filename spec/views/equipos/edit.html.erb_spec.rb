require 'rails_helper'

RSpec.describe "equipos/edit", :type => :view do
  before(:each) do
    @equipo = assign(:equipo, Equipo.create!(
      :ficha_de_equipo_id => 1,
      :ubicacion_id => 1,
      :unidades => 1
    ))
  end

  it "renders the edit equipo form" do
    render

    assert_select "form[action=?][method=?]", equipo_path(@equipo), "post" do

      assert_select "input#equipo_ficha_de_equipo_id[name=?]", "equipo[ficha_de_equipo_id]"

      assert_select "input#equipo_ubicacion_id[name=?]", "equipo[ubicacion_id]"

      assert_select "input#equipo_unidades[name=?]", "equipo[unidades]"
    end
  end
end
