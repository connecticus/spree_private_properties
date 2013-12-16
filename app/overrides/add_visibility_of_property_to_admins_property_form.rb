Deface::Override.new(:virtual_path => "spree/admin/properties/_form",
                     :name => "add_visibility_of_property_to_admins_property_form",
                     :insert_bottom => '[data-hook="admin_property_form"]',
                     :partial => "spree/admin/properties/visible_form_field")