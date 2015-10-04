class AddReferenceTipoStreetsToAddress < ActiveRecord::Migration
  def change
  	 add_reference :addresses, :tipo_street, index: true, foreign_key: true
  end
end
