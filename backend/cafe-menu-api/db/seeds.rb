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
Menu.create(name: "Breakfast") # id: 1
Menu.create(name: "Lunch") # id: 2
Menu.create(name: "Dinner") # id: 3

# Breakfast Items

Item.create(name: "Hot Coffee", price: 1.50, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/hot-coffee.jpg")
Item.create(name: "Iced Coffee", price: 2.00, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/iced-coffee.jpg")
Item.create(name: "Hot Tea", price: 1.50, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/hot-tea.jpg")
Item.create(name: "Butter Croissant", price: 2.00, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/butter-croissant.jpg")
Item.create(name: "Chocolate Croissant", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/chocolate-croissant.jpg")
Item.create(name: "Strawberry Croissant", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/strawberry-croissant.jpg")
Item.create(name: "Blueberry Muffin", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/blueberry-muffin.jpg")
Item.create(name: "Lemon Poppy Seed Muffin", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/lemon-poppyseed-muffin.jpeg")
Item.create(name: "Chocolate Chip Muffin", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/chocolate-chip-muffin.jpg")
Item.create(name: "Blueberry Scone", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/blueberry-scone.jpg")
Item.create(name: "Cranberry Orange Scone", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/Cranberry-Orange-Scones-1.jpg")
Item.create(name: "Vanilla Bean Scone", price: 2.25, menu_id: 1, image_url: "backend/cafe-menu-api/app/assets/images/vanilla_bean_scone.jpg")

# Lunch Items

Item.create(name: "Iced Tea", price: 2.00, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/iced-tea.jpg")
Item.create(name: "Fountain Drinks", price: 2.00, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/soda.jpg")
Item.create(name: "Chips and Salsa", price: 2.25, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/chips-and-salsa.jpg")
Item.create(name: "Spinach Artichoke Dip", price: 4.75, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/spinach-artichoke-dip.jpg")
Item.create(name: "Guacamole", price: 3.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/guacamole.jpg")
Item.create(name: "Zucchini Hummus", price: 3.75, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/zucchini-hummus.jpg")
Item.create(name: "Potato Chips", price: 2.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/potato-chips.jpg")
Item.create(name: "Tortilla Chips", price: 2.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/tortilla-chips.jpg")
Item.create(name: "Fries", price: 2.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/french_fries_in_paris_517260.jpg")
Item.create(name: "Onion Rings", price: 2.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/onion-rings.jpg")
Item.create(name: "Ham and Swiss Sandwich", price: 7.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/ham-and-swiss-sandwich.jpg")
Item.create(name: "Roast Beef Sandwich", price: 7.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/roast-beef-sandwich.jpg")
Item.create(name: "Pork Banh Mi Sandwich", price: 7.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/pork-banh-mi.jpeg")
Item.create(name: "Turkey Sandwich", price: 7.50, menu_id: 2, image_url: "backend/cafe-menu-api/app/assets/images/turkey-sandwich-26176975.jpg")

# Dinner Items

Item.create(name: "BBQ Nachos", price: 6.75, menu_id: 3, image_url: "sbackend/cafe-menu-api/app/assets/images/bbq-nachos.jpeg")
Item.create(name: "Loaded Fries", price: 6.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/loaded-fries.jpg")
Item.create(name: "Chicken Wings", price: 7.25, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/chicken-wings.jpg")
Item.create(name: "Classic Burger", price: 8.00, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/burger.jpeg")
Item.create(name: "Roasted Broccoli", price: 2.50, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/roasted-broccoli.jpg")
Item.create(name: "Baked Macaroni and Cheese", price: 3.50, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/baked-mac-and-cheese.jpg")
Item.create(name: "Apple Pie", price: 3.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/apple-pie-slice.jpeg")
Item.create(name: "Chocolate Lava Cake", price: 3.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/chocolate-lava-cake.jpg")
Item.create(name: "Skillet Chocolate Chip Cookie", price: 3.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/Skillet-Chocolate-Chip-Cookie-4-of-14.jpg")
Item.create(name: "Banana Pudding", price: 3.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/banana-pudding.jpg")
Item.create(name: "Strawberry Cheesecake", price: 3.75, menu_id: 3, image_url: "backend/cafe-menu-api/app/assets/images/strawberry-cheesecake.jpeg")

