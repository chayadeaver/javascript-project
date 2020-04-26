# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Menu.destroy_all
Item.destroy_all

# Menu
breakfast, lunch, dinner = Menu.create([
  {name: "Breakfast"}, {name: "Lunch"}, {name: "Dinner"}
])

# Breakfast Items

breakfast.items.create([
  {
    name: "Hot Coffee", 
    price: 1.50, 
    image_url: "assets/images/hot-coffee.jpg"
  },
  {
    name: "Iced Coffee", 
    price: 2.00, 
    image_url: "assets/images/iced-coffee.jpg"
  },
  {
    name: "Hot Tea", 
    price: 1.50, 
    image_url: "assets/images/hot-tea.jpg"
  },
  {
    name: "Butter Croissant", 
    price: 2.00, 
    image_url: "assets/images/butter-croissant.jpg"
  },
  {
    name: "Chocolate Croissant", 
    price: 2.25, 
    image_url: "assets/images/chocolate-croissant.jpg"
  },
  {
    name: "Strawberry Croissant", 
    price: 2.25, 
    image_url: "assets/images/strawberry-croissant.jpg"
  },
  {
    name: "Blueberry Muffin", 
    price: 2.25, 
    image_url: "assets/images/blueberry-muffin.jpg"
  },
  {
    name: "Lemon Poppy Seed Muffin", 
    price: 2.25, 
    image_url: "assets/images/lemon-poppyseed-muffin.jpeg"
  },
  {
    name: "Chocolate Chip Muffin", 
    price: 2.25, 
    image_url: "assets/images/chocolate-chip-muffin.jpg"
  },
  {
    name: "Blueberry Scone", 
    price: 2.25, 
    image_url: "assets/images/blueberry-scone.jpg"
  },
  {
    name: "Cranberry Orange Scone", 
    price: 2.25, 
    image_url: "assets/images/Cranberry-Orange-Scones-1.jpg"
  },
  {
  name: "Vanilla Bean Scone", 
  price: 2.25, 
  image_url: "assets/images/vanilla_bean_scone.jpg"
  }
])

# Lunch Items

lunch.items.create([
  {
    name: "Iced Tea", 
    price: 2.00, 
    image_url: "assets/images/iced-tea.jpg"
  },
  {
    name: "Fountain Drinks", 
    price: 2.00, 
    image_url: "assets/images/soda.jpg"
  },
  {
    name: "Chips and Salsa", 
    price: 2.25, 
    image_url: "assets/images/chips-and-salsa.jpg"
  },
  {
    name: "Spinach Artichoke Dip", 
    price: 4.75, 
    image_url: "assets/images/spinach-artichoke-dip.jpg"
  },
  {
    name: "Guacamole", 
    price: 3.50, 
    image_url: "assets/images/guacamole.jpg"
  },
  {
    name: "Zucchini Hummus", 
    price: 3.75, 
    image_url: "assets/images/zucchini-hummus.jpg"
  },
  {
    name: "Potato Chips", 
    price: 2.50, 
    image_url: "assets/images/potato-chips.jpg"
  },
  {
    name: "Tortilla Chips", 
    price: 2.50, 
    image_url: "assets/images/tortilla-chips.jpg"
  },
  {
    name: "Fries", 
    price: 2.50, 
    image_url: "assets/images/french_fries_in_paris_517260.jpg"
  },
  {
    name: "Onion Rings", 
    price: 2.50, 
    image_url: "assets/images/onion-rings.jpg"
  },
  {
    name: "Ham and Swiss Sandwich", 
    price: 7.50, 
    image_url: "assets/images/ham-and-swiss-sandwich.jpg"
  },
  {
    name: "Roast Beef Sandwich", 
    price: 7.50, 
    image_url: "assets/images/roast-beef-sandwich.jpg"
  },
  {
    name: "Pork Banh Mi Sandwich", 
    price: 7.50, 
    image_url: "assets/images/pork-banh-mi.jpeg"
  },
  {
    name: "Turkey Sandwich", 
    price: 7.50, 
    image_url: "assets/images/turkey-sandwich-26176975.jpg"
  }
])

# Dinner Items

dinner.items.create([
  {
    name: "BBQ Nachos", 
    price: 6.75, 
    image_url: "assets/images/bbq-nachos.jpeg"
  },
  {
    name: "Loaded Fries", 
    price: 6.75, 
    image_url: "assets/images/loaded-fries.jpg"
  },
  {
    name: "Chicken Wings", 
    price: 7.25, 
    image_url: "assets/images/chicken-wings.jpg"
  },
  {
    name: "Classic Burger", 
    price: 8.00, 
    image_url: "assets/images/burger.jpeg"
  },
  {
    name: "Roasted Broccoli", 
    price: 2.50, 
    image_url: "assets/images/roasted-broccoli.jpg"
  },
  {
    name: "Baked Macaroni and Cheese", 
    price: 3.50, 
    image_url: "assets/images/baked-mac-and-cheese.jpg"
  },
  {
    name: "Apple Pie", 
    price: 3.75, 
    image_url: "assets/images/apple-pie-slice.jpeg"
  },
  {
    name: "Chocolate Lava Cake", 
    price: 3.75, 
    image_url: "assets/images/chocolate-lava-cake.jpg"
  },
  {
    name: "Skillet Chocolate Chip Cookie", 
    price: 3.75, 
    image_url: "assets/images/Skillet-Chocolate-Chip-Cookie-4-of-14.jpg"
  },
  {
    name: "Banana Pudding", 
    price: 3.75, 
    image_url: "assets/images/banana-pudding.jpg"
  },
  {
    name: "Strawberry Cheesecake", 
    price: 3.75, 
    image_url: "assets/images/strawberry-cheesecake.jpeg"
  }
])

