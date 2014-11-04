require 'rails_helper'

RSpec.describe "areas/show", :type => :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :nombre => "Nombre",
      :ubicacion_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/1/)
  end
end
