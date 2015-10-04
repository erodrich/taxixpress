class Address < ActiveRecord::Base
	has_many :addresses_services
	has_many :services, :through => :addresses_services

	belongs_to :district
	belongs_to :tipo_street

end
