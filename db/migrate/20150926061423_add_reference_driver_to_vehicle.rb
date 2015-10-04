class AddReferenceDriverToVehicle < ActiveRecord::Migration
  def change
    add_reference :vehicles, :driver, index: true, foreign_key: true
  end
end
