# frozen_string_literal: true

class TurboFailureApp < Devise::FailureApp
  def respond
    if request_format == :turbo_stream
      redirect
    else
      super
    end
  end

  def skip_format?
    %w(html turbo_stream */*).include? request_format.to_s
  end
end

Devise.setup do |config|
  # ==> LDAP Configuration
  config.ldap_logger = true
  config.ldap_create_user = true
  config.ldap_update_password = true
  config.ldap_config = "#{Rails.root}/config/ldap.yml"
  config.ldap_check_group_membership = false
  # config.ldap_check_group_membership_without_admin = false
  # config.ldap_check_attributes = false
  # config.ldap_check_attributes_presence = false
  # config.ldap_use_admin_to_bind = true
  # config.ldap_ad_group_check = false

  # Configure the parent class to the custom controller.
  config.parent_controller = 'TurboDeviseUserController'
  config.navigational_formats = ['*/*', :html, :turbo_stream]

  # Warden configuration
  config.warden do |manager|
    manager.failure_app = TurboFailureApp
  end

  config.mailer_sender = 'support@gluedata.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
