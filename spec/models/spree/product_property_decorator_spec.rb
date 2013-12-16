require 'spec_helper'

describe Spree::Property do
  let(:property) { FactoryGirl.create :property }
  
  it "property should be visible by default" do
    expect(property.visible).to be_true
  end

  describe 'presistent' do
    before :each do
      property.visible = false
    end

    it "property should not be visible" do
      expect(property.visible).to be_false
    end
  end
end