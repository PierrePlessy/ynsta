class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :user
  has_many :tag_pictures
  has_many :tags, through: :tag_pictures

  def self.search(args)
    if args[:keywords]
      if args[:keywords].first == '#'
        Picture.joins(:tags).where('tags.name LIKE :query', query: "%#{args[:keywords].gsub(/#/, '')}%")
      else
        Picture.joins(:user).where('users.first_name  LIKE :query', query: "%#{args[:keywords]}%")
      end
    else
      Picture.all
    end
  end

  def self.find_by_tag(tag_id)
    Picture.joins(:tag_pictures).where(['tag_pictures.tag_id = ?', tag_id])
  end

  def self.find_by_user(slug)
    Picture.where(['user_id = ?', slug.to_i])
  end

  def self.find_by_category(category_id)
    Picture.where(['category_id = ?', category_id])
  end

end
