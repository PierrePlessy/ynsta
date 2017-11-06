class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :user
  has_many :tag_pictures
  has_many :tags, through: :tag_pictures

  def self.findById(args)
    Picture.where('id LIKE :query', query: args)
  end

  def self.findByUser(args)
    Picture.where('user_id LIKE :query', query: "%#{args[:keywords]}%")
  end

  def self.findByCategories(args)
    Picture.where('category_id LIKE :query', query: args)
  end

end
