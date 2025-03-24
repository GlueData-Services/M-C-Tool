class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end

  add_flash_types :info, :error, :warning
  before_action :authenticate_user!
  before_action :verify_license_expire

  private
    def verify_license_expire
      @license = License.last&.license_key
      if @license.present?
        jwt_service = JwtService.new
        d_token = jwt_service.decode_token(@license)
        if d_token["expires_at"].to_date < Date.today
          flash[:alert] = "License key expired on #{d_token["expires_at"]}, Please update license key for continue."
          redirect_to licenses_new_path
        else
          return true
        end
      else
        flash[:error] = "License key not present; Please enter license key for continue."
        redirect_to licenses_new_path
      end
    end
end
