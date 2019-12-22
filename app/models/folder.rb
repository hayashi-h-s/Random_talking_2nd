class Folder < ApplicationRecord
  has_many :posts, dependent: :destroy
end
