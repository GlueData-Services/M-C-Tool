FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    user_type { 'master_data' }

    factory :admin_user do
      user_type { 'admin' }
    end
  end
end
