# require 'faker'

# User.delete_all
# Question.delete_all
# Answer.delete_all
# Comment.delete_all
# Vote.delete_all

# User.create(name: "dbc", email: "dbc@none.none", password: "password", user_photo: Faker::Avatar.image)


# 30.times do
#   namee = Faker::Internet.user_name
#   User.create(name: namee, email: Faker::Internet.safe_email(namee), password: "password", user_photo: Faker::Avatar.image)
# end

# 31.times do
#   Question.create!(title: Faker::Hacker.say_something_smart, question_body: Faker::Hipster.paragraph(rand(4..15)), author_id: rand(234..264))
# end

# 90.times do
#   Answer.create(answer_body: Faker::Hipster.paragraph(rand(4..10)), question_id: rand(183..213), answerer_id: rand(234..264))
# end

# 10.times do
#   Comment.create(commentable_type: "Question", commentable_id: rand(183..213), comment_body: Faker::Hacker.say_something_smart, commenter_id: rand(234..264))
# end

# 100.times do
#   Comment.create(commentable_type: "Answer", commentable_id: rand(591..680), comment_body: Faker::Hacker.say_something_smart, commenter_id: rand(234..264))
# end

# 300.times do
#   Vote.create(votable_type: "Question", votable_id: rand(183..213), voter_id: rand(234..264), value: [1,1,1, -1].sample )
# end

# 300.times do
#   Vote.create(votable_type: "Answer", votable_id: rand(591..680), voter_id: rand(234..264), value: [1,1,1, -1].sample )
# end

