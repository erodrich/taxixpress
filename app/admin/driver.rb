ActiveAdmin.register Driver do
	permit_params :no_driver,
          :no_correo, 
          :nu_telefono, 
          :password, 
          :password_confirmation

	menu label: "Choferes"

	index :title => 'Choferes' do
			column "Nombre", :no_driver
			column "Correo", :no_correo
			column "Telefono", :no_correo
			column "Creado", :created_at
			column "Actualizado", :updated_at
			actions
	end

	controller do
	  def edit
	    @page_title = "Editar Chofer"
	  end
	  def new
      @page_title = "Crear Chofer"
      super
    end
	end

  show :title => :no_driver do
	  attributes_table do
	  	row 'Nombre' do resource.no_driver end
	  	row 'Correo' do resource.no_correo end
	  	row 'Telefono' do resource.nu_telefono end	
	  	row 'Registrado' do resource.created_at end
	  	row 'Ultima Actualizacion' do resource.updated_at end
	  end
 	end

 	form do |f|
 		f.semantic_errors
 		f.inputs :no_driver, :no_correo, :nu_telefono, :password, :password_confirmation
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
