FactoryBot.define do
  factory :order_address do
    token { "tok_abcdefghijk00000000000000000" }
    post_code { '123-4567' }
    prefecture_id { 2 }
    city { '福岡市' }
    house_number { '1-1' }
    building_name { 'ピアパーク' }
    phone_number { '01234567890' }
  end
end
