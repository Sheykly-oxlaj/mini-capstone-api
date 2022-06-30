# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Nike Air Force 1 '07", price: 100, image_url: "https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmlrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", description: "The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.")
product.save
 
product = Product.new(name: "Nike Air Force 1 '07", price: 100, image_url: "https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmlrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", description: "The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.")
product.save

product = Product.new(name: "Nike Air Jordan 1 Mid Fearless; Maison Château Rouge", price: 300, image_url: "https://images.unsplash.com/photo-1600774236989-a383d15c2e8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", description: "Fofana’s Fearless Air Jordan I Mid stays busy with intricate debossed patterns across the upper. The iconic AJI color blocking is softened with a psychic blue and pale vanilla colorway on the upper keeping things calm beneath a cinnamon swoosh. The hero of this collaboration is the red hand-stitching on the tongue and heel, one of Fofana’s signatures, incorporating his cultural roots through a nod to basketry and folk art. In line with the rest of Air Jordan’s Fearless series, this iteration stays true to the OG with Nike Air branding on the tongue and a Jordan Wings logo pinned to the ankle collar.")
product.save

product = Product.new(name: "Dunk Low University Red", price: 390, image_url: "https://images.unsplash.com/photo-1600181516264-3ea807ff44b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", description: "Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the model's 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history.")
product.save

product = Product.new(name: "Jordan 1 Satin Snake", price: 250, image_url: "https://images.unsplash.com/photo-1600774237019-70db10d342e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80", description: "The women’s Air Jordan 1 Retro High OG ‘Satin Red’ is the sequel to the women’s ‘Satin Black Toe’ release from 2019. This pair features the same Chicago-based palette as its predecessor but the color blocking is flipped, so that the forefoot is finished in red and the heel and collar overlays are rendered in basic black. The latter two components — along with the Swoosh — are embellished with a snakeskin texture, while satin is utilized on the tongue and interior lining.")
product.save