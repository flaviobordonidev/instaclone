class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  ## polymorphic
  has_many :likes, as: :likeable, dependent: :destroy
  accepts_nested_attributes_for :likes, allow_destroy: true
end
