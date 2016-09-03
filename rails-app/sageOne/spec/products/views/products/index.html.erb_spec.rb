require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :category2 => "Category",
        :unity => "Unity",
        :bar_code => 1,
        :currency => "R$",
        :cost => 1.2
      ),
      Product.create!(
        :category2 => "Category",
        :unity => "Unity",
        :bar_code => 1,
        :currency => "R$",
        :cost => 1.2
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Unity".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
