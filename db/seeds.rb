# Category.create(name: "home")
# Category.create(name: "sports")
# Category.create(name: "computers")
# Category.create(name: "sales")
# Category.create(name: "trades")
p = Post.create(category: "home", 
            title:  "Looking for a new fridge", 
            body: "I am looking for a new fridge", 
            author: "Andrew")

puts p.title