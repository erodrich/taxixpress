class AddReferenceTipoVehicleToService < ActiveRecord::Migration
  def change
    add_reference :services, :tipo_vehicle, index: true, foreign_key: true
  end
end
