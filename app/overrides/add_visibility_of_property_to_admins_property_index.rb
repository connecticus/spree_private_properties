Deface::Override.new(:virtual_path => "spree/admin/properties/index",
                     :name => "add_visibility_of_property_to_admins_property_index_th",
                     :insert_before => '#listing_properties thead th.actions',
                     :text => "<th><%= t(:is_visible?) %></th>")

Deface::Override.new(:virtual_path => "spree/admin/properties/index",
                     :name => "add_visibility_of_property_to_admins_property_index_td",
                     :insert_before => '#listing_properties tbody td.actions',
                     :text => "<th><%= t(:visible) if property.visible %></th>")