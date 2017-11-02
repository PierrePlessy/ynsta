class Picture < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :category
  belongs_to :user
  has_many :tag_picture

end
