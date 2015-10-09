class Driver < ActiveRecord::Base
	before_save {self.no_correo = no_correo.downcase}
	has_many :services
	has_many :vehicles

	accepts_nested_attributes_for :vehicles

	validates :no_driver, presence: true, length: { maximum: 50}
	validates :nu_telefono, presence: true, length: { maximum: 20}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :no_correo, presence: true, length: { maximum: 255},
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, presence: true, length: {minimum: 6}, allow_nil: true

	def get_possible_services
		vehicle = Vehicle.where(["driver_id = ?", self.id])
		tipo_vehicle = vehicle.first.tipo_vehicle.id
		services = Service.where(["tipo_vehicle_id = ? and status_id = ?",
																						tipo_vehicle, 1])
		return services
	end

	def get_driver_services
		services = Service.where(["driver_id = ?", self.id])
		return services
	end

end
