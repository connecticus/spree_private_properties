class AddVisibleToProperty < ActiveRecord::Migration
  def change
    add_column :spree_properties, :visible, :boolean, default: true
  end
end
