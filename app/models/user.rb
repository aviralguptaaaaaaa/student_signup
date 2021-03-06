class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    devise :omniauthable, omniauth_providers: %i[facebook]
    attr_accessor :terms_accepted, :image
    mount_uploader :image, ImageUploader
    def self.from_omniauth(auth)
      name_split = auth.info.name.split(" ")
      user = User.where(email: auth.info.email).first
      user ||= User.create!(provider: auth.provider, uid: auth.uid, last_name: name_split[0], first_name: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
        user
    end

    has_many :exams
    has_many :mcqs
    has_many :videos
    has_many :ebooks
end
