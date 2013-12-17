require 'spec_helper'

describe Spree::ProductsController do
  let!(:product) { create(:product) }
  let!(:product_property_visible) { create :product_property, product: product }
  let!(:product_property_not_visible) { 
    product_property = create :product_property, product: product 
    product_property.property.visible = false
    product_property.property.save!
    product_property
  }

  describe "@product_properties" do
    it "should only have visible properties" do
      spree_get :show, :id => product.to_param
      expect(assigns[:product_properties]).to eq([product_property_visible,])
    end
  end
end