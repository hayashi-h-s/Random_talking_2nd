class Post < ApplicationRecord
  belongs_to :folder

  validates :content, presence: true
end