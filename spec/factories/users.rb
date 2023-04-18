FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password { '1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    family_name {'辻岡'}
    first_name {'尚子'}
    family_name_kana {'ツジオカ'}
    first_name_kana {'ショウコ'}
    birth_day {Faker::Date.birthday}
  end
end