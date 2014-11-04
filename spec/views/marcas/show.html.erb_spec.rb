require 'rails_helper'

RSpec.describe "marcas/show", :type => :view do
  before(:each) do
    @marca = assign(:marca, Marca.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
