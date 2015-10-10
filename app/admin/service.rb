ActiveAdmin.register Service do
	permit_params :fe_fecha,
        :fe_hora,
        :nu_telefono,
        :ss_costo_estimado,
        :ss_costo_final,
        :tipo_vehicle_id,
        :payment_method_id,
        :driver_id,
        :status_id,
        addresses_attributes: []

	menu label: "Servicios"
	config.filters = false

	index :title => 'Servicios' do
		column "Codigo", :co_confirmacion
		column "Dia", :fe_fecha
		column "Hora", :fe_hora
		column "Registrado", :created_at
		actions
	end

	controller do
	  def edit
	    @page_title = "Editar Servicio"
	  end
	end

	form do |f|
 		f.semantic_errors
 		f.inputs "Detalles del Servicio" do 
 			  f.inputs :co_confirmacion,
 			  :fe_fecha,
        :fe_hora,
        :nu_telefono,
        :ss_costo_estimado,
        :ss_costo_final
    end
    f.inputs do
    	f.input :status_id, :label => "Estado", :as => :select, :collection => Status.all.map{|u| ["#{u.no_status}", u.id]}
    end
    f.inputs do
    	f.input :driver_id, :label => "Chofer", :as => :select, :collection => Driver.all.map{|u| ["#{u.no_driver}", u.id]}
    end
    f.inputs do
    	f.input :tipo_vehicle_id, :label => "Tipo de Vehiculo", :as => :select, :collection => TipoVehicle.all.map{|u| ["#{u.no_tipo}, #{u.nu_pasajeros}", u.id]}
    end
 		f.actions
 	end

	show do
	  panel "Direcciones" do
	    table_for service.addresses_services do
	    	flag = true
	    	column "Situacion" do |addresses_services|
	        if flag
	        	flag = false
	        	"Origen"
	        else
	        	"Destino"
	        end
	      end
	    	column "Via" do |addresses_services|
	        addresses_services.address.tipo_street.no_tipo_via
	      end
	      column "Nombre de calle" do |addresses_services|
	        addresses_services.address.street
	      end
	      column "Numero" do |addresses_services|
	        addresses_services.address.nu_casa
	      end
	      column "Distrito" do |addresses_services|
	        addresses_services.address.district.no_distrito
	      end
	      column "Otros" do |addresses_services|
	        addresses_services.address.tx_edif_dpto
	      end
	    end
	  end
	  attributes_table do
	  	row 'Fecha' do resource.fe_fecha end
	  	row 'Hora' do resource.fe_hora.to_s(:time) end
	  	row 'Costo Estimado' do resource.ss_costo_estimado end
	  	row 'Costo Final' do resource.ss_costo_final end
	  	row('Estado') {service.status.no_status}
	  	row('Conductor') {service.driver.no_driver}
	  	row('Usuario') {service.user.no_user}
	  	if service.feedback 
	  		row('Feedback') {service.feedback.tx_comentario}
	  	end
	  end
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
