class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_secure_password

  has_many :folders, dependent: :destroy

  validates :name, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
  mount_uploader :avatar, ImageUploader
end