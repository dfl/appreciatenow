class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin?
    true # TODO FIXME
  end

  helper_method :admin?
  
end
