require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :category2 => "MyString",
      :unity => "MyString",
      :bar_code => 1,
      :currency => "R$",
      :cost => 1.2
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_category2[name=?]", "product[category2]"

      assert_select "input#product_unity[name=?]", "product[unity]"

      assert_select "input#product_bar_code[name=?]", "product[bar_code]"
    end
  end
end
