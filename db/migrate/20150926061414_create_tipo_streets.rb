class CreateTipoStreets < ActiveRecord::Migration
  def change
    create_table :tipo_streets do |t|
      t.string :no_tipo_via

      t.timestamps null: false
    end
  end
end
