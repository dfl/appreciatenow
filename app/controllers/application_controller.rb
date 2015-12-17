class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # private
  REALM = "Admin Access Only"
  USERS = { "admin" => Digest::MD5.hexdigest(["admin",REALM,"lover"].join(":")) }  #ha1 digest password
  def authenticate_admin
    return true if Rails.env.test? || admin?
    authenticate_or_request_with_http_digest(REALM) do |name|
      @auth_user = name
      USERS[name]
    end.tap{|result| session[:admin] = @auth_user if result }
  end

  def admin?
    !!session[:admin]
  end
  helper_method :admin?  

end