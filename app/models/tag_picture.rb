class TagPicture < ApplicationRecord
  belongs_to :picture
  belongs_to :tag

  def self.findByPictures(args)
    TagPicture.where('picture_id LIKE :query', query: args)
  end

  def self.findByTags(args)
    TagPicture.where('tag_id LIKE :query', query: args)
  end
end
