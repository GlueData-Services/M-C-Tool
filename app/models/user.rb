class User < ApplicationRecord
  audited only: [:name, :email, :user_type]

  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  # devise :ldap_authenticatable, :recoverable, :rememberable, :lockable, :trackable
  devise :database_authenticatable, :recoverable, :rememberable, :lockable, :trackable

  enum user_type: { admin: 'admin',
                    reviewer: 'reviewer',
                    master_data: 'master_data',
                    user: 'user',
                    finance: 'finance',
                    buyer: 'buyer',
                    merchandise: 'merchandise',
                    replenishment: 'replenishment' }

  # def ldap_before_save
  #   self.email = Devise::LDAP::Adapter.get_ldap_param(self.username, "mail").first
  # end

  def allowed_tabs
    res = {}
    Problems::PROBLEMS.each do |problem|
      res[problem.name] = problem.tabs
    end

    case user_type
    when 'finance'
      res['refer_to_finance']
    when 'buyer'
      res['refer_to_buyers']
    when 'merchandise'
      res['refer_to_merch']
    when 'replenishment'
      res['refer_to_replenishment']
    end
  end

  def can_view?(tab)
    return true if admin? || reviewer? || master_data? || user?
    allowed_tabs.include?(tab)
  end
end
