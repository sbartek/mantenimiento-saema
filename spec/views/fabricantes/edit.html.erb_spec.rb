require 'rails_helper'

RSpec.describe "fabricantes/edit", :type => :view do
  before(:each) do
    @fabricante = assign(:fabricante, Fabricante.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit fabricante form" do
    render

    assert_select "form[action=?][method=?]", fabricante_path(@fabricante), "post" do

      assert_select "input#fabricante_nombre[name=?]", "fabricante[nombre]"
    end
  end
end
