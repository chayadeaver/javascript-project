class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :image_url
  belongs_to :menu
end
