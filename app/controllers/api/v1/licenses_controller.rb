module Api
  module V1
    class LicensesController < ActionController::API
      include ActionController::MimeResponds

      before_action :permit_params
      before_action :validate_name
      before_action :validate_duration

      def create
        payload = JwtService.create(permit_params)

        respond_to do |format|
          format.json { render json: "\nBelow is license key for client - '#{params[:client_name]}' and valid till - #{params[:duration]}\n#{payload}\n" }
        end
      end

      def update
      end

      def delete
      end

      private
        def permit_params
          params.permit(:client_name, :duration, :format)
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
          else
            params[:duration] = duration.httpdate
          end
        end
    end
  end
end
