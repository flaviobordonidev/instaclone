class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  ## polymorphic
  has_many :likes, as: :likeable, dependent: :destroy
  accepts_nested_attributes_for :likes, allow_destroy: true
end
