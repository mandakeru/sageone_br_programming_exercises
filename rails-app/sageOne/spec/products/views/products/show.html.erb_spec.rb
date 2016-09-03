require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :category2 => "Category",
      :unity => "Unity",
      :bar_code => 1,
      :currency => "R$",
      :cost => 1.2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Unity/)
    expect(rendered).to match(/1/)
  end
end
