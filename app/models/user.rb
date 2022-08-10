class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :lockable, :trackable

  def is_admin?
    self.user_type.inquiry.admin?
  end
end
