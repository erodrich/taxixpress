ActiveAdmin.register User do
	permit_params :no_user, :no_correo, :password, :password_confirmation
	menu label: "Usuarios"

	index :title => 'Usuarios' do
		column "Nombre", :no_user
		column "Correo", :no_correo
		column "Creado", :created_at
		column "Actualizado", :updated_at
		actions
	end

	controller do
    def edit
      @page_title = "Editar Usuario"
    end
    def new
      @page_title = "Crear Usuario"
      super
    end
  end

  show :title => :no_user do
	  attributes_table do
	  	row 'Nombre' do resource.no_user end
	  	row 'Correo' do resource.no_correo end
	  	row 'Registrado' do resource.created_at end
	  	row 'Ultima Actualizacion' do resource.updated_at end
	  end
 	end

 	form do |f|
 		f.semantic_errors
 		f.inputs :no_user, :no_correo, :password, :password_confirmation
 		f.actions
 	end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	
end
