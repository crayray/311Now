# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Users
brittney = User.create(name:"Brittney", username:"brittney12", email: "brittney@gmail.com")
yining = User.create(name:"Yining", username:"yinningwinning", email: "brittney@gmail.com")
rachel= User.create(name:"Rachel", username:"crayray", email: "rachel@gmail.com")
grant= User.create(name:"Grant", username:"clariti", email:"grant@gmail.com")
boris= User.create(name:"Boris", username:"Bobo", email:"boris@gmail.com")

#posts
post1= Post.create(title: "Crosswalk light out", description: "On south and northbound I-35 and 15th street, the pedestrian crosswalks are not blinking or responding to touch", neighborhood_id: 1, intersection: "15th and I-35", user_id: 5)
post2= Post.create(title: "One foot deep", description: "There's a big old pothole that caused me to trip on my run to the dairy farm.", neighborhood_id: 2, intersection: "50th and Lamar", user_id: 6)
post3= Post.create(title: "Fallen tree obscuring bike path!", description: "Following the storm, a vicious tree collapse has impeded safe biking on the Walnut bike path", neighborhood_id: 3, intersection: "Govalle and Springdale", user_id: 4)
post4= Post.create(title: "Evil Grackle Staring me down", description: "While walking down the street, a grackle was watching me from a streetpost. It then swooped down and attacked my head. Then i tripped over a pothole. AUSTIN, GET YOUR ACT TOGETHER.", neighborhood_id: 4, intersection: "4th and Colorado", user_id: 4)
post5= Post.create(title: "Ant hill flooded", description: "On the cherrywood creek trail, there is a massive ant mound that flooded. Ants are spilling out into the street by the thousands. It's a huge hazard for pedestrians", neighborhood_id: 5, intersection: "15th and I-35", user_id: 3)

#comments
comment1= Comment.create(body: "Whoaaaa, that's soooo intense!", user_id:7, post_id: 5)
comment2= Comment.create(body: "That pothole is gnarly, man! Hope you had fun on the dairy farm and that your ankle is feeling better", user_id:3, post_id: 2)
comment3= Comment.create(body: "Grackles are such mean spirited creatures. I hope the city kills all of them.", user_id:6, post_id: 4)
comment4= Comment.create(body: "If the city is looking for a good grackle hunter, hit me up! been a certified grackle killer for about seven years now.", user_id: 4, post_id: 4)
comment5= Comment.create(body: "Please be careful when you cross I-35 and 15th! The city really should fix that.", user_id:3, post_id:1)

#likes
like1= Like.create(user_id: 3, post_id: 1)
like2= Like.create(user_id: 4, post_id: 2)
like3= Like.create(user_id: 5, post_id: 3)
like4= Like.create(user_id: 6, post_id: 4)
like5= Like.create(user_id: 7, post_id: 5)

#neighborhood
downtown= Neighborhood.create(name: "Downtown Austin")
eastside= Neighborhood.create(name: "East Austin")
northaustin= Neighborhood.create(name: "North Austin")
southside= Neighborhood.create(name: "South Austin")
westside= Neighborhood.create(name: "West Austin")

