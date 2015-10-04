class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :no_via

      t.timestamps null: false
    end
  end
end
