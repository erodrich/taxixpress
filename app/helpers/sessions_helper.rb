module SessionsHelper
	# Logs in the given user.
  def log_in(user, role)
    session[:user_id] = user.id
    session[:role] = role
  end

  def current_user
    if @current_user.nil?
      case session[:role]
      when "user"
        @current_user = User.find_by(id: session[:user_id])
      when "driver"
        @current_user = Driver.find_by(id: session[:user_id])
      end
    else
      @current_user
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
