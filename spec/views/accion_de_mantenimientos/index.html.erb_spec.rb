require 'rails_helper'

RSpec.describe "accion_de_mantenimientos/index", :type => :view do
  before(:each) do
    assign(:accion_de_mantenimientos, [
      AccionDeMantenimiento.create!(
        :ficha_de_equipo_id => 1,
        :periodicidad => "Periodicidad",
        :descripcion => "MyText"
      ),
      AccionDeMantenimiento.create!(
        :ficha_de_equipo_id => 1,
        :periodicidad => "Periodicidad",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of accion_de_mantenimientos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Periodicidad".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
