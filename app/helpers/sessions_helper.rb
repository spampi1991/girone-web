module SessionsHelper

  #Logs in the current user
  def log_in(user)
    session[:user_id] = user.id
  end

  #Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  #Returns current logged user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #Returns true if the current user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end
end
