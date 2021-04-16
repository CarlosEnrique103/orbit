# frozen_string_literal: true

# Create main test user
User.create!(name: 'mabel',
             email: 'mabel@testuser.org',
             password: 'mabel123456',
             password_confirmation: 'mabel123456',
             admin: true)

99.times do |n|
  name = Faker::Name.name
  email = "user_#{n + 1}@testuser.org"
  password = '123456'
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end
