# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # require 'lightbox_view_helper'
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      flash[:notice] = "Unauthorized access"
      redirect_to root_path
      false
    end
  end
  
  def admin?
    session[:password] == "shellie"
  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
