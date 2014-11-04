require 'rails_helper'

RSpec.describe "fabricantes/index", :type => :view do
  before(:each) do
    assign(:fabricantes, [
      Fabricante.create!(
        :nombre => "Nombre"
      ),
      Fabricante.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of fabricantes" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
