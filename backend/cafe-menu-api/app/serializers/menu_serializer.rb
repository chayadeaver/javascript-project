class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :items
end
