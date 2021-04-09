# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "JDizzle", password: "JDizzle")
f1 = Folder.create(title: "First", user_id: u1, color:"red")
t1 = Thought.create(title: "MY First thought", description: "Yo this is real cool im creating my own app haha wow never thought this day would come i love rails and react!", folder_id: f1)
