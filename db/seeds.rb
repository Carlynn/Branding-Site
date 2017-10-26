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
  description: "Definition: The marketing practice of creating a name, symbol or design that identifies and differentiates a product from other products .

An effective brand strategy gives you a major edge in increasingly competitive markets. But what exactly does 'branding' mean? Simply put, your brand is your promise to your customer. It tells them what they can expect from your products and services, and it differentiates your offering from that of your competitors. Your brand is derived from who you are, who you want to be and who people perceive you to be.

Are you the innovative maverick in your industry? Or the experienced, reliable one? Is your product the high-cost, high-quality option, or the low-cost, high-value option? You can't be both, and you can't be all things to all people. Who you are should be based to some extent on who your target customers want and need you to be.

The foundation of your brand is your logo. Your website, packaging and promotional materials--all of which should integrate your logo--communicate your brand.

Your brand strategy is how, what, where, when and to whom you plan on communicating and delivering on your brand messages. Where you advertise is part of your brand strategy. Your distribution channels are also part of your brand strategy. And what you communicate visually and verbally is part of your brand strategy, too.

Consistent, strategic branding leads to a strong brand equity, which means the added value brought to your company's products or services that allows you to charge more for your brand than what identical, unbranded products command. The most obvious example of this is Coke vs. a generic soda. Because Coca-Cola has built a powerful brand equity, it can charge more for its product--and customers will pay that higher price.

The added value intrinsic to brand equity frequently comes in the form of perceived quality or emotional attachment. For example, Nike associates its products with star athletes, hoping customers will transfer their emotional attachment from the athlete to the product. For Nike, it's not just the shoe's features that sell the shoe.",
  image: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png",
},{
  title: "Test title 2",
  description: "description for test 2",
  image: "https://s-media-cache-ak0.pinimg.com/originals/24/85/2b/24852b9d5888f9132f7ecd91bc4a95ae.png",
  },
]

Post.create(posts)
