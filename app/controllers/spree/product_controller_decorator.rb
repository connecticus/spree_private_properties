Spree::ProductsController.class_eval do
  def show_without_private_properties
    return_value = show_with_private_properties
    @product_properties = @product_properties
                            .joins(:property)
                            .where("spree_properties.visible = ?", true)
    return_value
  end

  alias_method :show_with_private_properties, :show
  alias_method :show, :show_without_private_properties
end
