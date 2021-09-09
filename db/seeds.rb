require 'faker'
99.times do |n|
  name = Faker::Name.name
  email =  Faker::Internet.email
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               confirmed_at: Time.zone.now)
end
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  category = %w[auto moto velo foto].sample(1).inject
  users.each { |user| user.adverts.create!(content: content, category: category) }
end