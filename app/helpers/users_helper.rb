module UsersHelper

	def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.no_correo.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.no_user, 
    	class: "img-rounded",
    	style: "width: 80px; height:80px;")
  end
end
