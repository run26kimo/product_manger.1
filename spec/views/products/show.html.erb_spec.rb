require 'rails_helper'

RSpec.describe "products/show", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :code => "Code",
      :pic => "Pic",
      :name => "Name",
      :pv => 1.5,
      :bv => 1.5,
      :price => 1,
      :suggest_price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Pic/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
