require 'jwt'
require 'openssl'

class JwtService
  def initialize
    @private_key = OpenSSL::PKey::RSA.new(File.read(Rails.root.join('app/services/mc_tool')).strip)
    @public_key = OpenSSL::PKey::RSA.new(File.read(Rails.root.join('app/services/mc_tool.pub')).strip)
  end

  def self.create(params)
    jwt_service = JwtService.new
    data = { client_name: params["client_name"], duration: params["duration"] }
    token = jwt_service.generate_token(data)
    puts "\nGenerated JWT Token for #{params["client_name"]}: #{token}\n\n"
    return token
  end

  # Method to generate the token (license key)
  def generate_token(data)
    payload = {
      client_name: data[:client_name].strip,
      expires_at: data[:duration],
      issued_at: Time.now.to_i,
      license_type: 'premium'
    }
    # Generate the JWT token signed with the private SSH key
    JWT.encode(payload, @private_key, 'RS256')
  end

  # Method to decode and verify the token
  def decode_token(token)
    decoded_payload = JWT.decode(token, @public_key, true, { algorithm: 'RS256'}).first
    return decoded_payload # Returns the payload if the token is valid
  rescue JWT::DecodeError => e
    e
  end

  def verify_token
    jwt_verifier = JwtVerifier.new
    decoded_payload = jwt_verifier.decode_token(token)

    if decoded_payload
      puts "Decoded payload: #{decoded_payload}"
    else
      puts "Invalid token"
    end
  end
end
