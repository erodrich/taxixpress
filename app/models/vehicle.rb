class Vehicle < ActiveRecord::Base
	belongs_to :driver
	belongs_to :tipo_vehicle

	validates :no_marca, presence: true
	validates :no_modelo, presence: true
	validates :nu_placa, presence: true
end
