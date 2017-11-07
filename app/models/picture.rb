class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :user
  has_many :favoris
  has_many :tag_pictures
  has_many :tags, through: :tag_pictures

    validates_presence_of :image

  def self.search(args)
    if args[:keywords]
      if args[:keywords].first == '#'
        Picture.joins(:tags).where('tags.name LIKE :query', query: "%#{args[:keywords].gsub(/#/, '')}%")
      else
        Picture.joins(:user).where('users.first_name  LIKE :query', query: "%#{args[:keywords]}%")
      end
    elsif args[:category_id]
      Picture.where(['category_id = ?', args[:category_id]])
    elsif args[:tag_id]
      Picture.joins(:tag_pictures).where(['tag_pictures.tag_id = ?', args[:tag_id]])
    elsif args[:slug]
      Picture.where(['user_id = ?', args[:slug].to_i])
    else
      Picture.all
    end
  end


end
