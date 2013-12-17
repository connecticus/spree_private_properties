Spree::ProductsController.class_eval do
  after_filter :only_show_visible_product_properties, only: [:show]

  private
  def only_show_visible_product_properties
    @product_properties = @product_properties.joins(:property).where("spree_properties.visible = ?", true)
  end
end