class Post < ApplicationRecord
  # validates_associated :folders, presence: true
  belongs_to :folder
end