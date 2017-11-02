class Category < ApplicationRecord
  has_many :picture
  validates_presence_of :name
end
