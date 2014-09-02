FactoryGirl.define do
  factory :role, class: 'Role' do

    trait :admin do
      name 'admin'
    end

    trait :member do
      name 'member'
    end
  end
end
