require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :code => "Code",
        :pic => "Pic",
        :name => "Name",
        :pv => 1.5,
        :bv => 1.5,
        :price => 1,
        :suggest_price => 2
      ),
      Product.create!(
        :code => "Code",
        :pic => "Pic",
        :name => "Name",
        :pv => 1.5,
        :bv => 1.5,
        :price => 1,
        :suggest_price => 2
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
