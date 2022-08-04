# require 'faker'


puts "🌱 Seeding spices..."

# Seed your database here

10.times do 
    Band.create(
    name: Faker::Music.band,
    genre: Faker::Music.genre,
    instrument_needed: Faker::Music.instrument
    )
end

20.times do 
    Musician.create(
    name: Faker::Name.name,
    instrument: Faker::Music.instrument,
    years_experience: Faker::Number.between(from:1, to: 20),
    city: Faker::Address.city,
    band_id: rand(1..20),
    hired: "false"
    )
end

puts "✅ Done seeding!"
