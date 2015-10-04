class AddReferenceTipoVehicleToVehicle < ActiveRecord::Migration
  def change
    add_reference :vehicles, :tipo_vehicle, index: true, foreign_key: true
  end
end
