# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

10.times do
  users = User.new(
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    age: Faker::Number.between(from: 18, to: 70)
    address: Faker::Address.full_address
    photo: Faker::Avatar.image
    counrty: Faker::Address.country
  )
  users.save
end

10.times do
  posts = Posts.new(
    
  )
  posts.save
end

author_id
title
text
comment_counter
likes_counter

5.times do
  users = User.new(
    full_name: Faker::Name.name
  )
  users.save
end

15.times do
  course = Course.new(
    title: Faker::Educator.course_name,
    description: Faker::Lorem.paragraph(sentence_count: 10),
    category: Faker::Educator.subject,
    duration: Faker::Number.within(range: 4..30),
    photo: Faker::Internet.domain_name,
    user_id: Faker::Number.within(range: 1..5)
  )
  course.save
end