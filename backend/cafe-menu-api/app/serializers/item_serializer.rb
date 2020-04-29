class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :image_url, :menu
  # belongs_to :menu
end
