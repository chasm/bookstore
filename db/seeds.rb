# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.destroy_all
Book.destroy_all
Genre.destroy_all

sf = Genre.create :name => "Science Fiction"
hf = Genre.create :name => "Historical Fiction"

a1 = Author.create :name => "Arthur C. Clarke"
a2 = Author.create :name => "Thomas Pynchon"
a3 = Author.create :name => "Kurt Vonnegut, Jr."

b1 = Book.create :title => "Childhood's End"
b1.author = a1
b1.genres << sf

b2 = Book.create :title => "2001: A Space Odyssey"
b2.author = a1
b2.genres << sf

b3 = Book.create :title => "V"
b3.author = a2
b3.genres << sf
bg = BookGenre.create :book => b3, :genre => hf, :disputed => true

b4 = Book.create :title => "Gravity's Rainbow"
b4.author = a2
b4.genres << [ sf, hf ]

b5 = Book.create :title => "Cat's Cradle"
b5.author = a3
b5.genres << sf

