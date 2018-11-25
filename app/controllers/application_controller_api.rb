class ApplicationControllerApi < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  def default_serializer_options
    { root: true }                           
  end   
end
