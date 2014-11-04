require 'rails_helper'

RSpec.describe "marcas/index", :type => :view do
  before(:each) do
    assign(:marcas, [
      Marca.create!(
        :nombre => "Nombre"
      ),
      Marca.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of marcas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
