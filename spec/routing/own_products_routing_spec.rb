require "rails_helper"

RSpec.describe OwnProductsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/own_products").to route_to("own_products#index")
    end

    it "routes to #new" do
      expect(:get => "/own_products/new").to route_to("own_products#new")
    end

    it "routes to #show" do
      expect(:get => "/own_products/1").to route_to("own_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/own_products/1/edit").to route_to("own_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/own_products").to route_to("own_products#create")
    end

    it "routes to #update" do
      expect(:put => "/own_products/1").to route_to("own_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/own_products/1").to route_to("own_products#destroy", :id => "1")
    end

  end
end
