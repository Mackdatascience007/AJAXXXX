5.times do 
    Email.create!(object: Faker::Book.author, body: Faker::Book.title, read: false)
end
puts("seed ajoute")
