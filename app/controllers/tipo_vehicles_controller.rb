class TipoVehiclesController < ApplicationController
  before_action :set_tipo_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /tipo_vehicles
  # GET /tipo_vehicles.json
  def index
    @tipo_vehicles = TipoVehicle.all
  end

  # GET /tipo_vehicles/1
  # GET /tipo_vehicles/1.json
  def show
  end

  # GET /tipo_vehicles/new
  def new
    @tipo_vehicle = TipoVehicle.new
  end

  # GET /tipo_vehicles/1/edit
  def edit
  end

  # POST /tipo_vehicles
  # POST /tipo_vehicles.json
  def create
    @tipo_vehicle = TipoVehicle.new(tipo_vehicle_params)

    respond_to do |format|
      if @tipo_vehicle.save
        format.html { redirect_to @tipo_vehicle, notice: 'Tipo vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_vehicle }
      else
        format.html { render :new }
        format.json { render json: @tipo_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_vehicles/1
  # PATCH/PUT /tipo_vehicles/1.json
  def update
    respond_to do |format|
      if @tipo_vehicle.update(tipo_vehicle_params)
        format.html { redirect_to @tipo_vehicle, notice: 'Tipo vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @tipo_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_vehicles/1
  # DELETE /tipo_vehicles/1.json
  def destroy
    @tipo_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to tipo_vehicles_url, notice: 'Tipo vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_vehicle
      @tipo_vehicle = TipoVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_vehicle_params
      params.require(:tipo_vehicle).permit(:no_tipo, :nu_pasajeros)
    end
end
