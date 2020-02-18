class User < ApplicationRecord
  has_secure_password

  has_many :folders

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
