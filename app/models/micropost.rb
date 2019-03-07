class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorit_microposts
  has_many :fav_users, through: :favorit_microposts, source: :user
end
