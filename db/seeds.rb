# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Concert.destroy_all
Artiste.destroy_all

def open_photo(name)
  File.open(Rails.root.join("db", "images", name))
end

artiste1 = Artiste.create!(pseudo: "Lindsey Stirling",
  age: 25, description: "Joue du violon et danse en même temps!" , photo: open_photo("lindsey.jpg"))

artiste2 = Artiste.create!(pseudo: "Floyd Pink",
  age: 37, description: "Seul et pas seul à la fois." , photo: open_photo("pink.jpg"))

artiste3 = Artiste.create!(pseudo: "Lancelot",
  age: 42, description: "Adore jouer de la musique avec son épée !" , photo: open_photo("lancelot.jpg"))

concert1 = Concert.create!(artiste: artiste1,
  salle: "Blue Night", date: "21 Janvier 2016, 21:00", description: "Concert de folie !!!", photo: open_photo("concertBlue.jpg"))

concert2 = Concert.create!(artiste: artiste2,
  salle: "Pink Night", date: "15 Mars 2017, 19:00", description: "Concert de folie !!!", photo: open_photo("concertPink.jpg"))

concert3 = Concert.create!(artiste: artiste3,
  salle: "Yellow Night", date: "01 Novembre 2017, 20:15", description: "Concert de folie !!!", photo: open_photo("concertYellow.jpg"))

