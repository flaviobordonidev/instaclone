class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  ## polymorphic
  has_many :likes, as: :likeable
end
