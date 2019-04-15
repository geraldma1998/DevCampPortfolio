# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "This is the body number #{blog}"
  )
end

puts "10 blog posts created"

9.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 9.1
  )
end

puts "9 skills created"

10.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "This is the portfolio item body number #{portfolio_item}",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "10 portfolio items created"