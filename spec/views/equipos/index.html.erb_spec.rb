require 'rails_helper'

RSpec.describe "equipos/index", :type => :view do
  before(:each) do
    assign(:equipos, [
      Equipo.create!(
        :ficha_de_equipo_id => 1,
        :ubicacion_id => 2,
        :unidades => 3
      ),
      Equipo.create!(
        :ficha_de_equipo_id => 1,
        :ubicacion_id => 2,
        :unidades => 3
      )
    ])
  end

  it "renders a list of equipos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
