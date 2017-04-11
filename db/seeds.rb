# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Concert.destroy_all

def open_photo(name)
  File.open(Rails.root.join("app", "imgConcert", name))
end

concert = Concert.create!(artiste: "Lindsey Stirling",
  salle: "Blue Night", date: "21 Janvier 2016, 21:00" , photo: open_photo("concertBlue.jpg"))

concert = Concert.create!(artiste: "Loyd Pink",
  salle: "Pink Night", date: "15 Mars 2017, 19:00" , photo: open_photo("concertPink.jpg"))

concert = Concert.create!(artiste: "Lancelot",
  salle: "Yellow Night", date: "01 Novembre 2017, 20:15" , photo: open_photo("concertYellow.jpg"))