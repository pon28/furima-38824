FactoryBot.define do
  factory :item do
    association :user

    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 2, to: 11) }
    status_id { Faker::Number.between(from: 2, to: 7) }
    shipping_cost_id { Faker::Number.between(from: 2, to: 3) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    shipping_day_id { Faker::Number.between(from: 2, to: 4) }
    price { rand(300..9999999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/test.png'), filename: 'test.png')
    end
  end
end
