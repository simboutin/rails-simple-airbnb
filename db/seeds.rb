# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens, London Borough of Hillingdon, England, Royaume-Uni',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  photos: ['https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200']
)

Flat.create!(
  name: 'Stylish House Close to River Thames',
  address: '5 Queensmill Road, London Borough of Hammersmith and Fulham, England, Royaume-Uni',
  description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
  price_per_night: 65,
  number_of_guests: 2,
  photos: ['https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200']
)

Flat.create!(
  name: 'St Pancras Clock Tower Guest Suite',
  address: 'Euston Road, London Borough of Croydon, England, Royaume-Uni',
  description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
  price_per_night: 110,
  number_of_guests: 2,
  photos: [] # https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=1200
)
