class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :content, presence: true
  validates :content, length: { in: 1..255 }
  belongs_to :user
end
