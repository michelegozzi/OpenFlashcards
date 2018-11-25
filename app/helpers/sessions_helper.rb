module SessionsHelper

  def sign_in(user)
    logger.info "sign_in"
	session[:user_id] = user.id
  end

  def signed_in?
    logger.info "Current user: #{current_user}"
    !current_user.nil?
  end
  
  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end