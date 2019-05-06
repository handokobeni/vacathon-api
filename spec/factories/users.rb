FactoryBot.define do
    factory :user do
        name { Faker::Name.name }
        email {'foo@bar.com'}
        username {'handoko'}
        password {'foobar'}
        role {'anu'}
        avatar {'anu.jpg'}
    end
end