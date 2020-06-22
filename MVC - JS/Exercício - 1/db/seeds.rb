# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a1 = Album.create(name: "Famous Monsters", artist: "Misfits")

a2 = Album.create(name: "N.W.A. and the Posse", artist: "Eazy-E")

Music.create(name: "Astro Zombies", album: a1, genre:"Rock")

Music.create(name: "Boyz-n-the-Hood", album: a2, genre:"Rap")