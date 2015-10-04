class TipoStreet < ActiveRecord::Base
	has_many :addresses
end
