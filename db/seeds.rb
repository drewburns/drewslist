Category.create(name: "kitchen")
Category.create(name: "sports")
Category.create(name: "computers")
Category.create(name: "cars")
Category.create(name: "other")
p = Post.create(category_id: 1, 
            title:  "Looking for a new fridge", 
            body: "I am looking for a new fridge", 
            author: "Andrew")

puts p.title