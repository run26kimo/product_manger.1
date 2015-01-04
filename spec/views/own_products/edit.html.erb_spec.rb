require 'rails_helper'

RSpec.describe "own_products/edit", :type => :view do
  before(:each) do
    @own_product = assign(:own_product, OwnProduct.create!(
      :product => nil,
      :user => nil,
      :count => 1,
      :memo => "MyString"
    ))
  end

  it "renders the edit own_product form" do
    render

    assert_select "form[action=?][method=?]", own_product_path(@own_product), "post" do

      assert_select "input#own_product_product_id[name=?]", "own_product[product_id]"

      assert_select "input#own_product_user_id[name=?]", "own_product[user_id]"

      assert_select "input#own_product_count[name=?]", "own_product[count]"

      assert_select "input#own_product_memo[name=?]", "own_product[memo]"
    end
  end
end
