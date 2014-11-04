require 'rails_helper'

RSpec.describe "fabricantes/show", :type => :view do
  before(:each) do
    @fabricante = assign(:fabricante, Fabricante.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
