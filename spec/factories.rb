FactoryBot.define do
  factory :article do
    title 'Default title'
    body 'Default body'
    published true
    association :author
  end
end

FactoryBot.define do
  factory :author do
    name 'McFly'
  end
end

FactoryBot.define do
  factory :page do
    title 'Default title'
    body 'Default body'
    published true
    association :author
  end
end
