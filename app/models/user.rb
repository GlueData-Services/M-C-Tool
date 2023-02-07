class User < ApplicationRecord
  audited only: [:name, :email, :user_type]

  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  # devise :ldap_authenticatable, :recoverable, :rememberable, :lockable, :trackable
  devise :recoverable, :rememberable, :lockable, :trackable

  def is_admin?
    self.user_type.inquiry.admin?
  end

  # def ldap_before_save
  #   self.email = Devise::LDAP::Adapter.get_ldap_param(self.username, "mail").first
  # end
end
