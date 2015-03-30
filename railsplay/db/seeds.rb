# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 10 people
(1..10).each do |i|
  Person.create!(
    name: "Person #{i}",
    age: i + 30
    )
end

STDOUT.puts "10 people created..."

# Create 5 categories
(1..5).each do |i|
  Category.create!(
    name: "Category #{i}",
    description: i % 2 == 0 ? nil : "Description for category #{i}"
    )
end

STDOUT.puts "5 categories created..."

# Create 10 posts for each category
(1..5).each do |category_id|
  (1..10).each do |i|
    Post.create!(
      title: "Post #{i}",
      content: "This is the content for Post #{i}",
      category_id: category_id
      )
    STDOUT.puts "10 articles created in category #{category_id}..." if i % 10 == 0
  end
end

STDOUT.puts "Seeding complete."