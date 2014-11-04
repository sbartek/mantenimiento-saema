require 'rails_helper'

RSpec.describe "fabricantes/new", :type => :view do
  before(:each) do
    assign(:fabricante, Fabricante.new(
      :nombre => "MyString"
    ))
  end

  it "renders new fabricante form" do
    render

    assert_select "form[action=?][method=?]", fabricantes_path, "post" do

      assert_select "input#fabricante_nombre[name=?]", "fabricante[nombre]"
    end
  end
end
