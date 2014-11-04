require 'rails_helper'

RSpec.describe "zonas/index", :type => :view do
  before(:each) do
    assign(:zonas, [
      Zona.create!(
        :nombre => 1,
        :area_pt => 2
      ),
      Zona.create!(
        :nombre => 1,
        :area_pt => 2
      )
    ])
  end

  it "renders a list of zonas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
