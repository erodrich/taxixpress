class CreateTipoVehicles < ActiveRecord::Migration
  def change
    create_table :tipo_vehicles do |t|
      t.string :no_tipo
      t.integer :nu_pasajeros

      t.timestamps null: false
    end
  end
end
