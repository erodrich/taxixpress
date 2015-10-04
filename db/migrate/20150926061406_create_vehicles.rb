class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :no_marca
      t.string :no_modelo
      t.string :nu_placa

      t.timestamps null: false
    end
  end
end
