ActiveAdmin.register User, as: "Usuarios" do
	remove_filter :service
	index do
		column "Nombre", :no_user
		column "Correo", :no_correo
		column "Creado", :created_at
		column "Actualizado", :updated_at
		actions
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
