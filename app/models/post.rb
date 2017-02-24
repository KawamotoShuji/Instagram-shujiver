class Post < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  validates :content, presence: true
  validates :avatar, presence: true
  validates :content, length: { in: 1..255 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end
