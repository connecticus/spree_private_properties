Spree::ProductsController.class_eval do
  set_callback :show, :after, :hide_private_properties

  private

  def hide_private_properties
    @product_properties = @product_properties.
                            joins(:property).
                            where("spree_properties.visible = ?", true)
  end
end
