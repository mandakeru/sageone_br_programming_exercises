require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :category2 => "MyString",
      :unity => "MyString",
      :bar_code => 1,
      :currency => "R$",
      :cost => 1.2
      
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_category2[name=?]", "product[category2]"

      assert_select "input#product_unity[name=?]", "product[unity]"

      assert_select "input#product_bar_code[name=?]", "product[bar_code]"
    end
  end
end
