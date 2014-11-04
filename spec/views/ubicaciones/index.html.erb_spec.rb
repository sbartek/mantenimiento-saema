require 'rails_helper'

RSpec.describe "ubicaciones/index", :type => :view do
  before(:each) do
    assign(:ubicaciones, [
      Ubicacion.create!(
        :nombre => "Nombre"
      ),
      Ubicacion.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of ubicaciones" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
