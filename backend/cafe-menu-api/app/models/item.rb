class Item < ApplicationRecord
  belongs_to :menu, optional: true
  has_many :order_items, dependent: :destroy
end
