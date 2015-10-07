class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_client

  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find(params[:id])
    @addresses = @service.addresses_services
    @a1 = Address.find(@addresses[0][:address_id])
    @a2 = Address.find(@addresses[1][:address_id])
    @status = Status.find(@service.status_id)
    @tipo_vehicle = TipoVehicle.find(@service.tipo_vehicle_id)
    if @status && @status.id != 1
      @chofer = Driver.find(@service.driver_id)
    end

  end

  # GET /services/new
  def new
    @service = Service.new
    @origin = @service.addresses.new
    @destiny = @service.addresses.new
    @tipo_vehicles = TipoVehicle.all

  end

  # GET /services/1/edit
  def edit

  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    @service.user_id = @user.id
    @service.co_confirmacion = @service.get_cod_confirmacion
    @service.status_id = 1

    respond_to do |format|
      if @service.save
        format.html { redirect_to [@user,@service], notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to [current_user,@service], notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to user_services_url(@user), notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    def set_client
      @user = User.find_by(id: params[:user_id])
      @driver = Driver.find_by(id: params[:driver_id])
      if @user
        return @user
      else
        if @driver
          return @driver
        end
      end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(
        :fe_fecha,
        :fe_hora,
        :nu_telefono,
        :ss_costo_estimado,
        :ss_costo_final,
        :tipo_vehicle_id,
        :payment_method_id,
        :driver_id,
        :status_id,
        addresses_attributes: [:nu_casa, :tx_edif_dpto, :district_id, :tipo_street_id, :street])
    end
    #def service_params
    #  params.require(:service).permit!
    #end
end
