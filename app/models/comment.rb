class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  ## polymorphic
  has_many :likes, as: :likeable
end
