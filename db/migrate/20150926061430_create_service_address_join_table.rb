class CreateServiceAddressJoinTable < ActiveRecord::Migration
  def change
    create_join_table :services, :addresses do |t|
      # t.index [:service_id, :address_id]
      t.index [:address_id, :service_id], unique: true
    end
  end
end
