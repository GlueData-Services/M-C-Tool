class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  add_flash_types :info, :error, :warning
  before_action :authenticate_user!
end
