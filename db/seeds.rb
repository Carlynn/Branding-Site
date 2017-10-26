# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all

posts = [{
  title: "Test title 1",
  description: "description for test 1",
  default_image: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png",
},{
  title: "Test title 2",
  description: "description for test 2",
  default_image: "https://s-media-cache-ak0.pinimg.com/originals/24/85/2b/24852b9d5888f9132f7ecd91bc4a95ae.png",
  },
]

Post.create(posts)
