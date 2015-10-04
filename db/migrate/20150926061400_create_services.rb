class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :co_confirmacion
      t.date :fe_fecha
      t.time :fe_hora
      t.string :nu_telefono
      t.float :ss_costo_estimado
      t.float :ss_costo_final

      t.timestamps null: false
    end
  end
end
