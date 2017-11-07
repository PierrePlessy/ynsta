class Category < ApplicationRecord
  has_many :pictures
  validates_presence_of :name
end
