# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create!({name: Faker::Name.name, email: Faker::Internet.email})

  5.times do
    post = Post.create!({
      author: user,
      title: Faker::Quote.famous_last_words,
      body: Faker::Lorem.paragraphs(number: 3).join("\n")
    })

    5.times do
      post.comments.create!({
        body: Faker::Quote.famous_last_words
      })
    end
  end
end