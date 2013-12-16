require 'spec_helper'

describe "Taxonomies and taxons" do
  stub_authorization!

  let!(:property) { FactoryGirl.create :property }
  
  it "admin should be able to edit property's visibilty" do
    visit spree.edit_admin_property_path(property.id)
    
    find(:css, "#property_visible").set(false)
    click_button "Update"

    visit spree.edit_admin_property_path(property.id)
    find(:css, "#property_visible").should_not be_checked 
  end
end