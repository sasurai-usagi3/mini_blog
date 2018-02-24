FactoryBot.define do
  factory :user, class: 'MiniBlog::User' do
    sequence(:email) { |n| "test#{n}@example.com" }
    password 'password'
  end
end
