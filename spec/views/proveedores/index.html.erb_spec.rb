require 'rails_helper'

RSpec.describe "proveedores/index", :type => :view do
  before(:each) do
    assign(:proveedores, [
      Proveedor.create!(
        :nombre => "Nombre"
      ),
      Proveedor.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of proveedores" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
