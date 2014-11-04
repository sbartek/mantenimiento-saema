require 'rails_helper'

RSpec.describe "areas/index", :type => :view do
  before(:each) do
    assign(:areas, [
      Area.create!(
        :nombre => "Nombre",
        :ubicacion_id => 1
      ),
      Area.create!(
        :nombre => "Nombre",
        :ubicacion_id => 1
      )
    ])
  end

  it "renders a list of areas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
