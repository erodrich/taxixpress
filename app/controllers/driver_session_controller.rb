class DriverSessionController < ApplicationController
  def new
  end

  def create
  	driver = Driver.find_by(no_correo: params[:driver_session][:email].downcase)
  	if driver && driver.authenticate(params[:driver_session][:password])
  		#Log the driver in and redirect to the driver's show page
  		log_in(driver, "driver")
  		redirect_to driver
  	else
  		#Create an error message
  		flash.now[:danger] = 'Correo o contraseña incorrectos'
  		render 'new'
  	end
  end

  def destroy
  	log_out
    redirect_to root_path
  end

end
