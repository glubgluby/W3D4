# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Response.destroy_all

#Users 

a = User.create!(user_name: "Stankk Daddi")
b = User.create!(user_name: "PandaOasis") 
cotton_eye_joe = User.create!(user_name: "Preggo_My_Eggo")
d = User.create!(user_name: "L_Money")
e = User.create!(user_name: "NickNastyyyy")


#polls
f = Poll.create!(author_id: a.id, title: "Where did you come from, Cotton-Eyed-Joe?")

#questions
g = Question.create!(poll_id: f.id, text: "Where did you go?")
h = Question.create!(poll_id: f.id, text: "Where did you come from?")
i = Question.create!(poll_id: f.id, text: "What happened to Cotton-Eyed-Joe?")

#A_choices
j = AnswerChoice.create!(answer: 'Montana', question_id: g.id)
k = AnswerChoice.create!(answer: 'Springfield', question_id: g.id)


# response

fgg = Response.create!(user_id: b.id, answer_choice_id: j.id)
agg = Response.create!(user_id: cotton_eye_joe.id, answer_choice_id: k.id)
aggy = Response.create!(user_id: d.id, answer_choice_id: k.id)



