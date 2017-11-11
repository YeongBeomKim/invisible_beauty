class Post < ApplicationRecord
  belongs_to :user
  has_many :echos
  has_many :comments
  has_many :metoos
end
