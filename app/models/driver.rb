class Driver < ActiveRecord::Base
	before_save {self.no_correo = no_correo.downcase}
	has_many :services

	validates :no_driver, presence: true, length: { maximum: 50}
	validates :nu_telefono, presence: true, length: { maximum: 20}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :no_correo, presence: true, length: { maximum: 255},
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, presence: true, length: {minimum: 6}, allow_nil: true

end
