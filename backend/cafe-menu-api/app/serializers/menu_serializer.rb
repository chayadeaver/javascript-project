class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :items
  # has_many :items
end
