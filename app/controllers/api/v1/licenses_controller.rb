module Api
  module V1
    class LicensesController < ActionController::API
      include ActionController::MimeResponds

      before_action :permit_params
      before_action :validate_name
      before_action :validate_duration, only: [:create]

      def create
        payload = JwtService.create(permit_params)

        respond_to do |format|
          format.json { render json: "\nBelow is license key for client - '#{params[:client_name]}' and valid till - #{params[:duration]}\n#{payload}\n" }
        end
      end

      def decode_key
        jwt_service = JwtService.new
        d_token = jwt_service.decode_token(permit_params[:license_key])

        if d_token.class == JWT::VerificationError || d_token.class == JWT::DecodeError
          respond_to do |format|
            format.json { render json: "\n #{d_token} \n\n" }
          end
        elsif params[:client_name] != d_token["client_name"]
          respond_to do |format|
            format.json { render json: "\n Client Name is invalid: #{params[:client_name]}\n Please check lowercase and uppercase\n\n" }
          end
        else
          respond_to do |format|
            format.json { render json: "\n #{d_token} \n\n" }
          end
        end
      end

      private
        def permit_params
          params.permit(:client_name, :duration, :license_key, :format)
        end

        def validate_name
          if params[:client_name].blank?
            respond_to do |format|
              format.json { render json: "Client Name should be present\n", status: 400 }
            end
          elsif params[:client_name].length > 50
            respond_to do |format|
              format.json { render json: "Client Name should be less than 50 Characters\n", status: 400 }
            end
          end
          return true
        end

        def validate_duration
          begin
            duration = Date.parse(params[:duration])
          rescue Date::Error => e
            duration = e
          end

          if duration.class.eql?(Date::Error)
            respond_to do |format|
              format.json { render json: "Invalid Date, Date format should be DD/MM/YYYY \n", status: 400 }
            end
          elsif duration < Date.today
            respond_to do |format|
              format.json { render json: "Invalid Date, Date should not be in past \n", status: 400 }
            end
          else
            params[:duration] = duration.httpdate
          end
        end
    end
  end
end
