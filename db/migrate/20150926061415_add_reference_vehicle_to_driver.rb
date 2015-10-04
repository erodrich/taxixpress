class AddReferenceVehicleToDriver < ActiveRecord::Migration
  def change
    add_reference :drivers, :vehicle, index: true, foreign_key: true
  end
end
