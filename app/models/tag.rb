class Tag < ApplicationRecord
  validates_presence_of :name
  has_many :tag_pictures
  has_many :pictures, through: :tag_pictures
end
