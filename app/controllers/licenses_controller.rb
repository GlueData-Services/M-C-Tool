class LicensesController < ApplicationController
  skip_before_action :verify_license_expire

  def index
    @licenses = []
    @licenses = License.all
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new(license_params)
    @license.client_name = license_params[:client_name].strip
    jwt_service = JwtService.new
    @d_token = jwt_service.decode_token(license_params[:license_key])

    respond_to do |format|
      if @license.invalid?
        format.html { render :new, status: :unprocessable_entity }
        format.json { render :index, status: :created, location: @license }
      elsif @d_token.class == JWT::VerificationError || @d_token.class == JWT::DecodeError
        format.html { redirect_to licenses_new_url, notice: "#{@d_token}", status: :unprocessable_entity }
        format.json { render json: @d_token, status: :unprocessable_entity }
      elsif @d_token["client_name"] != license_params[:client_name]
        format.html { redirect_to licenses_index_url, notice: "Client name - #{license_params[:client_name]} mismatched with license key" }
        format.json { render json: "Client name mismatched with license key\n", status: :unprocessable_entity }
      elsif @license.save
        @license.update_columns(expire_date: @d_token["expires_at"]) if @license.valid?
        format.html { redirect_to licenses_index_url, notice: "License Key was successfully added." }
        format.json { render :index, status: :created, location: @license }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def license_params
      params.require(:license).permit(:client_name, :license_key)
    end
end
