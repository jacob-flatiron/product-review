# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
# Review.destroy_all
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here


Review.create(product_id: product1.id, user_id: user1.id, star_rating: 3, comment: "good")
Review.create(product_id: product2.id, user_id: user1.id, star_rating: 2, comment: "bad")
Review.create(product_id: product3.id, user_id: user1.id, star_rating: 5, comment: "eh")

Review.create(product_id: product5.id, user_id: user2.id, star_rating: 9, comment: "great")
Review.create(product_id: product3.id, user_id: user2.id, star_rating: 7, comment: "horrible")
Review.create(product_id: product2.id, user_id: user2.id, star_rating: 6, comment: "fantastic")

Review.create(product_id: product1.id, user_id: user3.id, star_rating: 1, comment: "meh")
Review.create(product_id: product3.id, user_id: user3.id, star_rating: 2, comment: "leh")
Review.create(product_id: product4.id, user_id: user3.id, star_rating: 7, comment: "beh")

Review.create(product_id: product1.id, user_id: user3.id, star_rating: 5, comment:"shmeh")
Review.create(product_id: product1.id, user_id: user1.id, star_rating: 8, comment: "cool")
Review.create(product_id: product4.id, user_id: user2.id, star_rating: 2, comment: "uncool")

puts "Seeding done!"