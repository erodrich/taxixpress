class PaymentMethod < ActiveRecord::Base
	has_many :services
end
