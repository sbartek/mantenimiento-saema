require 'rails_helper'

RSpec.describe "equipos/new", :type => :view do
  before(:each) do
    assign(:equipo, Equipo.new(
      :ficha_de_equipo_id => 1,
      :ubicacion_id => 1,
      :unidades => 1
    ))
  end

  it "renders new equipo form" do
    render

    assert_select "form[action=?][method=?]", equipos_path, "post" do

      assert_select "input#equipo_ficha_de_equipo_id[name=?]", "equipo[ficha_de_equipo_id]"

      assert_select "input#equipo_ubicacion_id[name=?]", "equipo[ubicacion_id]"

      assert_select "input#equipo_unidades[name=?]", "equipo[unidades]"
    end
  end
end
