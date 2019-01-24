FactoryBot.define do
  sequence(:name) { |n| "bike_#{n}" }
  sequence(:price) { |n| n + 5}


  factory :product do
    name
    description 'This is a test description'
    image_url 'https://cdn.shopify.com/s/files/1/1803/3819/products/2757888_480x480.jpg?v=1531977738'
    price
    colour 'red'

  end
end
