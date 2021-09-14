class User < ApplicationRecord
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable,
         omniauth_providers: [:google_oauth2]
  has_many :adverts, dependent: :destroy
  after_create :assign_default_role


  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    user ||= User.create(
      email: data['email'],
      name: data['name'],
      password: Devise.friendly_token[0, 20]
    )
    user
  end
  
  private
  
  def assign_default_role
    add_role(:user) if roles.blank?
  end
end
