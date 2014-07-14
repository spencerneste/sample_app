FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :user do
  	name     "Spencer Winston"
    email   
    password "foobar"
    password_confirmation "foobar"
  end
end