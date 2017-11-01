# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all

posts = [{
  title: "Queensborough",
  description: "We are am very proud to hold the Creative Director title at Queensborough. Our role has been to create an original brand identity for the restaurant / bar, and then implement it across many platforms, which includes ongoing design work.

Owners Mike Vizcarra and Shane Brennan hired us to develop this project from the very beginning, from putting together the investor pitch deck, to designing the logo, to choosing staff uniforms and making sure all elements of branding were cohesive and beautiful. We designed all the menus, the gold decals on the windows, all flyers, social media graphics, and merchandise. We also designed, developed and manage QueensboroughSD.com.

Queensborough Uptown (upstairs) is open to the public seven days a week from 4pm–close. You can check it out in San Diego's Gaslamp District at 777 5th Avenue, 92101. We highly recommend a cocktail called The Big Apple. Downtown (downstairs) will open this August.",
  image: "https://static1.squarespace.com/static/571670a9a3360c1a30ec94a3/t/5913ce991b10e3b63db3d3fb/1494470307783/QB_moodboard_v02.jpg?format=750w",
},{
  title: "Harvest",
  description: " A sustainable and responsible market, restaurant, & gathering place located in San Diego's East Village. A Legal Restaurant & Patio Group Project. Coming July 2016. ",
  image: "https://static1.squarespace.com/static/571670a9a3360c1a30ec94a3/t/5733926560b5e9974b76f062/1462997613077/?format=750w",
  },
]

Post.create(posts)
