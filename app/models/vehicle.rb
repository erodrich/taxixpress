class Vehicle < ActiveRecord::Base
	belongs_to :driver
	belongs_to :tipo_vehicle
end
