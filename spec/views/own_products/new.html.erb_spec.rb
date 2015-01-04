require 'rails_helper'

RSpec.describe "own_products/new", :type => :view do
  before(:each) do
    assign(:own_product, OwnProduct.new(
      :product => nil,
      :user => nil,
      :count => 1,
      :memo => "MyString"
    ))
  end

  it "renders new own_product form" do
    render

    assert_select "form[action=?][method=?]", own_products_path, "post" do

      assert_select "input#own_product_product_id[name=?]", "own_product[product_id]"

      assert_select "input#own_product_user_id[name=?]", "own_product[user_id]"

      assert_select "input#own_product_count[name=?]", "own_product[count]"

      assert_select "input#own_product_memo[name=?]", "own_product[memo]"
    end
  end
end
