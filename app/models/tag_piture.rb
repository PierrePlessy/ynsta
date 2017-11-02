class Tag_Picture < ApplicationRecord
  belongs_to :picture
  belongs_to :tag
end
