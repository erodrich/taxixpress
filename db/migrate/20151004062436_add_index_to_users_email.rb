class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users, :no_correo, unique: true
  end
end
