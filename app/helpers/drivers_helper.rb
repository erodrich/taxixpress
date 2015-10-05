module DriversHelper
	def gravatar_for_driver(driver)
    gravatar_id = Digest::MD5::hexdigest(driver.no_correo.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: driver.no_driver, 
    	class: "img-rounded",
    	style: "width: 80px; height:80px;")
  end
end
