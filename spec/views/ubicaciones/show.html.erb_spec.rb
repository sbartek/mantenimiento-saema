require 'rails_helper'

RSpec.describe "ubicaciones/show", :type => :view do
  before(:each) do
    @ubicacion = assign(:ubicacion, Ubicacion.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
