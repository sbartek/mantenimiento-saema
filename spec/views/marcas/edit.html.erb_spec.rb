require 'rails_helper'

RSpec.describe "marcas/edit", :type => :view do
  before(:each) do
    @marca = assign(:marca, Marca.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit marca form" do
    render

    assert_select "form[action=?][method=?]", marca_path(@marca), "post" do

      assert_select "input#marca_nombre[name=?]", "marca[nombre]"
    end
  end
end
