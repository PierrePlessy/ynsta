class Picture < ApplicationRecord
  # mount_uploader :picture, PictureUploader

  belongs_to :category
  belongs_to :user
  has_many :tag_picture

  def self.findByUser(args)
    Message.where('id_user LIKE :query', query: "%#{args[:keywords]}%")
  end

  def self.findByCategories(args)
    Message.where('id_category LIKE :query', query: "%#{args[:keywords]}%")
  end

end
