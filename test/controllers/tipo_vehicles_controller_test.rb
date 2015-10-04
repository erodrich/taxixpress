require 'test_helper'

class TipoVehiclesControllerTest < ActionController::TestCase
  setup do
    @tipo_vehicle = tipo_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_vehicle" do
    assert_difference('TipoVehicle.count') do
      post :create, tipo_vehicle: { no_tipo: @tipo_vehicle.no_tipo, nu_pasajeros: @tipo_vehicle.nu_pasajeros }
    end

    assert_redirected_to tipo_vehicle_path(assigns(:tipo_vehicle))
  end

  test "should show tipo_vehicle" do
    get :show, id: @tipo_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_vehicle
    assert_response :success
  end

  test "should update tipo_vehicle" do
    patch :update, id: @tipo_vehicle, tipo_vehicle: { no_tipo: @tipo_vehicle.no_tipo, nu_pasajeros: @tipo_vehicle.nu_pasajeros }
    assert_redirected_to tipo_vehicle_path(assigns(:tipo_vehicle))
  end

  test "should destroy tipo_vehicle" do
    assert_difference('TipoVehicle.count', -1) do
      delete :destroy, id: @tipo_vehicle
    end

    assert_redirected_to tipo_vehicles_path
  end
end
