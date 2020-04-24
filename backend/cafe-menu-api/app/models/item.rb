class Item < ApplicationRecord
  has_one_attached :images
  belongs_to :menu
end
