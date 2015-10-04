class Service < ActiveRecord::Base
	belongs_to :user
	has_one	:feedback
	has_many :addresses_services
	has_many :addresses, :through => :addresses_services


	accepts_nested_attributes_for :addresses
	accepts_nested_attributes_for :addresses_services


 def get_cod_confirmacion
	months = ['A','B','C','D','E','F','G','H','I','J','K','L']
 	y = Time.now.strftime("%y")
 	m = months[Time.now.month-1]
 	d = Time.now.strftime("%d")
 	count = (Service.where(:created_at => Time.now.to_date)).count
 	c = "%03d" % count
 	result = y + m + d + c
 end
end

