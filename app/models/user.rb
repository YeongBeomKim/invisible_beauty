class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_and_belongs_to_many :missions
  has_many :echos
  has_many :comments
  def is_post_echo?(post)
    Echo.find_by(user_id: self.id,post_id: post.id).present?
  end
  def is_comment_echo?(post)
    Comment.find_by(user_id: self.id,post_id: post.id).present?
  end
  def is_metoo?(post)
    Metoo.find_by(user_id: self.id,post_id: post.id).present?
  end
end
