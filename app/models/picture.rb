class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :user
  has_many :tag_pictures
  has_many :tags, through: :tag_pictures

  def self.findByUser(args)
    Message.where('id_user LIKE :query', query: "%#{args[:keywords]}%")
  end

  def self.findByCategories(args)
    Message.where('id_category LIKE :query', query: "%#{args[:keywords]}%")
  end

end
