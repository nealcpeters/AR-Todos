require 'faker'

10.times do
  Task.create(contents: Faker::Lorem::sentence(word_count = 5), complete: 0)
end
