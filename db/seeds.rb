# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'french',
    phone_number:  '0617984324'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number:  '0617984324'
  },

    {
    name:         'Tacos',
    address:      '8 rue bapst, Paris',
    category:     'italian',
    phone_number:  '06179843564'
  },
  {
    name:         'Chinese',
    address:      '8 rue bapst, Paris',
    category:     'french',
    phone_number:  '06179843564'
  },
   {
    name:         'La kinder friture',
    address:      '8 rue de flandre, Molenbeek',
    category:     'belgian',
    phone_number: '06179843564'
  },
]
restaurants_attributes.each do |restaurant|
  Restaurant.create!(restaurant)
end
puts 'Finished!'
