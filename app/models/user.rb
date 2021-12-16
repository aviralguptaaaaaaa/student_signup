class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    attr_accessor :terms_accepted, :image
    mount_uploader :image, ImageUploader

    has_many :exams
    has_many :mcqs
    has_many :videos
    has_many :ebooks
end
