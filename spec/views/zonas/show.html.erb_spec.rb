require 'rails_helper'

RSpec.describe "zonas/show", :type => :view do
  before(:each) do
    @zona = assign(:zona, Zona.create!(
      :nombre => 1,
      :area_pt => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
