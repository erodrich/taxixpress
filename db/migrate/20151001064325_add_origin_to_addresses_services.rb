class AddOriginToAddressesServices < ActiveRecord::Migration
  def change
    add_column :addresses_services, :origin, :boolean, default: false
  end
end
