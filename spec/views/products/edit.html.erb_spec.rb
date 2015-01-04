require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :code => "MyString",
      :pic => "MyString",
      :name => "MyString",
      :pv => 1.5,
      :bv => 1.5,
      :price => 1,
      :suggest_price => 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_code[name=?]", "product[code]"

      assert_select "input#product_pic[name=?]", "product[pic]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_pv[name=?]", "product[pv]"

      assert_select "input#product_bv[name=?]", "product[bv]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_suggest_price[name=?]", "product[suggest_price]"
    end
  end
end
