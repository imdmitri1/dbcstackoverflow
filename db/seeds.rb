User.create(name: "dbc", email: "dbc@none.none", password: "password", user_photo: Faker::Avatar.image)


200.times do
  namee = Faker::Internet.user_name
  User.create(name: namee, email: Faker::Internet.safe_email(namee), password: "password", user_photo: Faker::Avatar.image)
end

151.times do
  Question.create!(title: Faker::Hacker.say_something_smart, question_body: Faker::Hipster.paragraph(rand(4..15)), author_id: rand(1..200))
end

500.times do
  Answer.create(answer_body: Faker::Hipster.paragraph(rand(4..10)), question_id: rand(1..151), answerer_id: rand(1..200))
end

100.times do
  Comment.create(commentable_type: "Question", commentable_id: rand(1..151), comment_body: Faker::Hacker.say_something_smart, commenter_id: rand(1..200))
end

1000.times do
  Comment.create(commentable_type: "Answer", commentable_id: rand(1..500), comment_body: Faker::Hacker.say_something_smart, commenter_id: rand(1..200))
end

5000.times do
  Vote.create(votable_type: "Question", votable_id: rand(1..151), voter_id: rand(1..200), value: [1,1,1, -1].sample )
end

5000.times do
  Vote.create(votable_type: "Answer", votable_id: rand(1..500), voter_id: rand(1..200), value: [1,1,1, -1].sample )
end
