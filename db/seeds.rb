# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def output()
  var = ["Premium", "Standard", "Delux", "Executive", "Stake Holder"]
  var[rand(0..4)]
end

def years()
  var = ["1 Year", "2 Years", "3 Years", "4 Years","5 Years", "Lifetime"]
  var[rand(0..5)]
end

def banks()
  var = ["Key Stone", "First Bank", "Polaris Bank", "Guaranty Trust Bank", "Zenith Bank", "Ecobank", "Wema Bank", "Stanbic IBTC", "Access Bank"]
  var[rand(0..8)]
end

require "faker"

15.times do
  users = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(from: 18, to: 70),
    address: Faker::Address.full_address,
    photo: Faker::Avatar.image,
    country: Faker::Address.country,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 10, max_length: 20)
  )
  users.save
end

15.times do
  posts = Post.new(
    author_id: Faker::Number.between(from: 1, to: 15),
    title: Faker::Lorem.sentence(word_count: 3),
    text: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 6),
    comments_counter: Faker::Number.between(from: 4, to: 12),
    likes_counter: Faker::Number.between(from: 4, to: 15)
  )
  posts.save
end

15.times do 
  comments = Comment.new(
    post_id: Faker::Number.between(from: 1, to: 15),
    author_id: Faker::Number.between(from: 1, to: 15),
    text: Faker::Lorem.sentence(word_count: 11, supplemental: true, random_words_to_add: 6)
  )
  comments.save
end

15.times do
  recipes = Recipe.new(
    author_id: Faker::Number.between(from: 1, to: 15),
    name: Faker::Food.dish,
    preparation_time: "hours #{Faker::Number.between(from: 2, to: 15)}",
    cooking_time: "hours #{Faker::Number.between(from: 2, to: 12)}",
    public: Faker::Boolean.boolean,
    photo: Faker::LoremFlickr.image
  )
  recipes.save
end

10.times do
  recipe_foods = RecipeFood.new(
    food_id: Faker::Number.between(from: 1, to: 15),
    recipe_id: Faker::Number.between(from: 1, to: 15),
    quantity: Faker::Number.between(from: 3, to: 25)
  )
  recipe_foods.save
end

15.times do
  foods = Food.new(
    user_id: Faker::Number.between(from: 1, to: 15),
    measurement_unit: Faker::Measurement.metric_weight(amount: "all"),
    price: Faker::Number.number(digits: 3),
    name: Faker::Food.dish
  )
  foods.save
end

10.times do
  account_details = AccountDetail.new(
    user_id: Faker::Number.between(from: 1, to: 15),
    bank: banks(),
    account_number: Faker::Number.number(digits: 9)
  )
  account_details.save
end

10.times do
  members = Membership.new(
    user_id: Faker::Number.between(from: 1, to: 15),
    account_detail_id: Faker::Number.between(from: 1, to: 10),
    member_type: output(),
    fees: Faker::Number.number(digits: 5),
    duration: years()
  )
  members.save
end

