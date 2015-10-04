class AddressesService < ActiveRecord::Base

	belongs_to :address
	belongs_to :service
end
