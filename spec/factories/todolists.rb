FactoryBot.define do
  factory :todolist do
    title { Faker::Lorem.word }
    isCompleted { false }
  end
end
