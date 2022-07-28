# require 'faker'


puts "🌱 Seeding spices..."

# Seed your database here

20.times do 
    Band.create(
    name: Faker::Music.band,
    genre: Faker::Music.genre
    )
end

20.times do 
    Musician.create(
    name: Faker::Name.name,
    instrument: Faker::Music.instrument,
    years_experience: Faker::Number.between(from:1, to: 20),
    city: Faker::Address.city,
    band_id: Faker::Number.between(from: 1, to: 20)
    )
end


puts "✅ Done seeding!"
