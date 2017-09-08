


10.times do
  namee = Faker::Internet.user_name
  User.create(name: namee, email: Faker::Internet.email(namee), password: "password")
end

20.times do
  Question.create!(title: Faker::Hacker.say_something_smart, question_body: Faker::Hipster.paragraphs, author_id: rand(1..10))
end

200.times do
  Answer.create(answer_body: Faker::Hipster.paragraph, question_id: rand(1..20), answerer_id: rand(1..10))
end

400.times do
  Comment.create(commentable_type: ["question", "answer"].sample, commentable_id: rand(1..20), comment_body: Faker::Hacker.say_something_smart, commenter_id: rand(1..10))
end

400.times do
  Vote.create(votable_type: ["comment", "question", "answer"].sample, votable_id: rand(1..400), voter_id: rand(1..10), value: [1, -1].sample )
end
