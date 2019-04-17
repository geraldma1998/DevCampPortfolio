# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NUMBER_TOPICS = 3
NUMBER_BLOGS = 10
NUMBER_SKILLS = 9
NUMBER_PORTFOLIOS = 11
NUMBER_TECHNOLOGIES = 4

NUMBER_TOPICS.times do |topic|
  Topic.create!(
    title: "This is the topic number #{topic}",
  )
end

puts "#{NUMBER_TOPICS} topics created"

NUMBER_BLOGS.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "This is the body number #{blog}",
    topic_id: Topic.last.id
  )
end

puts "#{NUMBER_BLOGS} blog posts created"

NUMBER_SKILLS.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 9.1
  )
end

puts "#{NUMBER_SKILLS} skills created"

NUMBER_PORTFOLIOS.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "This is the portfolio item body number #{portfolio_item}"
  )
end

Portfolio.create!(
    title: "Portfolio title: 10",
    subtitle: "Angular",
    body: "This is the portfolio item body number 10"
  )

puts "#{NUMBER_PORTFOLIOS} portfolio items created"

NUMBER_TECHNOLOGIES.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology number #{technology}"
  )
end

puts "#{NUMBER_TECHNOLOGIES} technologies created"
