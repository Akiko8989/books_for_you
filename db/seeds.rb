User.destroy_all
Post.destroy_all

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

TroublePost.create!(content: "おはよう", user_id: user2.id)
TroublePost.create!(content: "こんにちは", user_id: user3.id)
TroublePost.create!(content: "こんばんは", user_id: user3.id)

puts "初期データの投入に成功しました！"
