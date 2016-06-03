class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  before_create :set_default_role       
  belongs_to :role
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitch]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.avatar = auth.extra.raw_info.logo
        user.tname = auth.extra.raw_info.display_name
      end
  end
  
  
  def set_default_role
    self.role_id = 4
  end

  def is_admin?
    self.role_id == 1
  end

  def is_guest?
   self.role_id == 4
  end
         
end
