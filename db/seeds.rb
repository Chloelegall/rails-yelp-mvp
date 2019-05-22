Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0494949442',
    category:     'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0494949442',
    category:     'italian'
  },
    {
    name:         'Yolo',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0494949442',
    category:     'japanese'
  },
  {
    name:         'Yala East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0494949442',
    category:     'japanese'
  },
    {
    name:         'Yihi',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0494949442',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

Review.destroy_all

puts 'Creating reviews...'

review = Review.new(content: "très bon", rating: 5)
review.restaurant = Restaurant.first
review.save
