require 'rails_helper'

RSpec.describe "own_products/show", :type => :view do
  before(:each) do
    @own_product = assign(:own_product, OwnProduct.create!(
      :product => nil,
      :user => nil,
      :count => 1,
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Memo/)
  end
end
