require 'rails_helper'

RSpec.describe "OwnProducts", :type => :request do
  describe "GET /own_products" do
    it "works! (now write some real specs)" do
      get own_products_path
      expect(response).to have_http_status(200)
    end
  end
end
