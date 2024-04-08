# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(
  email:    'bob@email.com',
  password: 'password',
  bio: 'I like to do alot of hiking.'
)

user2 = User.create!(
  email:    'alice@email.com',
  password: 'password',
  bio: 'I like to do alot of nothing.'
)

# Create blog posts
user1.blog_posts.create!(
  title: "A Beginner's Guide to Painting",
  body: "Dive into the world of art with this beginner's guide to painting. Learn about essential supplies, basic techniques, and tips for finding inspiration.",
)

user2.blog_posts.create!(
  title: "Top 5 Hidden Gems in Your City",
  body: "Discover the culinary delights of your city with this list of the top 5 hidden gem restaurants. From cozy cafes to trendy bistros, these spots are sure to satisfy your taste buds.",
)

user1.blog_posts.create!(
  title: "7 Habits for a Productive Day",
  body: "Start your day off right with these 7 habits for a productive morning routine. From meditation to exercise, learn how to set the tone for a successful day ahead",
)

user2.blog_posts.create!(
  title: "A Traveler's Diary: Adventures in Southeast Asia",
  body: "Join us on a journey through Southeast Asia as we explore vibrant cultures, stunning landscapes, and delicious cuisine. Get inspired for your next travel adventure!",
)
