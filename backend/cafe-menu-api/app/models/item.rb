class Item < ApplicationRecord
  has_one_attached :image_url
  belongs_to :menu
end
