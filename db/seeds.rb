# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

planets = [
  {
    name: "Mercury",
    size: 2440,
    compositions: "iron",
    rotation_time: "58 days"
  },
  {
    name: "venus",
    size: 6052,
    compositions: "liquid rock",
    rotation_time: "253 days"
  },
  {
    name: "earth",
    size: 6371,
    compositions: "solid rock",
    rotation_time: "1 day"
  },
  {
    name: "mars",
    size: 3390,
    compositions: "oxidised iron dust",
    rotation_time: "1 day"
  },
  {
    name: "jupiter",
    size: 69911,
    compositions: "hydrogen and helium",
    rotation_time: "0.5 days"
  }
]

compositions = ["hydrogen", "helium", "solid rock", "liquid rock", "iron"]

ChemicalComposition.destroy_all
Planet.destroy_all

planets.each do |p|
  this_planet = Planet.new(
                  name: p[:name],
                  size: p[:size],
                  rotation_time: p[:rotation_time]
                )
  this_planet.save
end

planet_ids = Planet.all.pluck(:id)

compositions.each do |comp|
  ChemicalComposition.create(
    name: comp,
    planet_id: planet_ids.sample)
end

puts "All data created"