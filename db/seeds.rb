require 'faker'

Email.destroy_all


puts "Ready for emails seed"
puts "--------------"
5.times do
    Email.create(object: Faker::Book.title, body: Faker::ChuckNorris.fact)
end
puts "--------------"
puts "Email's seed --- Ok!"