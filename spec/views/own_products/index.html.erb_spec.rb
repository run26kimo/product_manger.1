require 'rails_helper'

RSpec.describe "own_products/index", :type => :view do
  before(:each) do
    assign(:own_products, [
      OwnProduct.create!(
        :product => nil,
        :user => nil,
        :count => 1,
        :memo => "Memo"
      ),
      OwnProduct.create!(
        :product => nil,
        :user => nil,
        :count => 1,
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of own_products" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
