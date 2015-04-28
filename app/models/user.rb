class User < ActiveRecord::Base
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
     :omniauthable, :omniauth_providers => [:facebook]
  has_many :posts
  has_many :comments


  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end

  
  def increase_karma(count=1)
    update_attribute(:karma, karma + count)
  end
  def decrease_karma(count=1)
  update_attribute(:karma, karma - count)
  end

end
