# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
MealDiet.destroy_all
UserDiet.destroy_all
UserMeal.destroy_all
MealIngredient.destroy_all
Review.destroy_all
Meal.destroy_all
User.destroy_all
Ingredient.destroy_all
Diet.destroy_all

require "open-uri"

# all my users: 20 in total
User.create!(
  first_name: "Alice",
  last_name: "Smith",
  address: "456 Oak St",
  age: 25,
  email: "alice.smith@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409963/clarissa-cruz-headshot-people-f4197aa2a3b44efb90f907198d950c8d_iy8peb.jpg')
  user.profile_picture.attach(io: file, filename: 'user_one.png', content_type: 'image/png')
end

User.create!(
  first_name: "Bob",
  last_name: "Johnson",
  address: "789 Pine Ave",
  age: 28,
  email: "bob.johnson@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409961/alexandre-abitbol_rpcffj.jpg')
  user.profile_picture.attach(io: file, filename: 'user_two.png', content_type: 'image/png')
end

User.create!(
  first_name: "Carol",
  last_name: "Davis",
  address: "101 Maple Rd",
  age: 32,
  email: "carol.davis@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409957/91622_People_Wendy_Naugle_S3_1255_FNL_preview-4ac906ede68e4de68aaabe483a7a0d4f_ozxiib.jpg')
  user.profile_picture.attach(io: file, filename: 'user_three.png', content_type: 'image/png')
end

User.create!(
  first_name: "David",
  last_name: "Brown",
  address: "202 Birch Blvd",
  age: 27,
  email: "david.brown@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409960/how-to-stop-being-a-people-pleaser-1_1_frbwnp.jpg')
  user.profile_picture.attach(io: file, filename: 'user_four.png', content_type: 'image/png')
end

User.create!(
  first_name: "Emma",
  last_name: "Wilson",
  address: "303 Cedar Ln",
  age: 22,
  email: "emma.wilson@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409908/premium_photo-1671656333460-a3a85854d01e_trngy7.jpg')
  user.profile_picture.attach(io: file, filename: 'user_five.png', content_type: 'image/png')
end

User.create!(
  first_name: "Frank",
  last_name: "Moore",
  address: "404 Elm Dr",
  age: 35,
  email: "frank.moore@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409907/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e_anwl34.jpg')
  user.profile_picture.attach(io: file, filename: 'user_six.png', content_type: 'image/png')
end

User.create!(
  first_name: "Grace",
  last_name: "Taylor",
  address: "505 Spruce Ct",
  age: 29,
  email: "grace.taylor@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409906/7K5BkEX8HqQShfGMFH3NuzAgOgIxdzBASWwsBW1FenQPy1cW5alzsLtQirKzLC4ces7_1GXnMNeOso6RYz1-A8hWPXZismqXm0pMl7UWH1ObjQlsZQ_w1440-v1-e30_dwxkdn.jpg')
  user.profile_picture.attach(io: file, filename: 'user_seven.png', content_type: 'image/png')
end

User.create!(
  first_name: "Henry",
  last_name: "Anderson",
  address: "606 Poplar St",
  age: 31,
  email: "henry.anderson@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409753/premium_photo-1673866484792-c5a36a6c025e_vcqehd.jpg')
  user.profile_picture.attach(io: file, filename: 'user_eight.png', content_type: 'image/png')
end

User.create!(
  first_name: "Ivy",
  last_name: "Thomas",
  address: "707 Fir St",
  age: 26,
  email: "ivy.thomas@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409749/canva-green-gradient-minimalist-simple-instagram-profile-picture-tBlf3wVYGhg_jd3yut.jpg')
  user.profile_picture.attach(io: file, filename: 'user_nine.png', content_type: 'image/png')

end

User.create!(
  first_name: "Jack",
  last_name: "Jackson",
  address: "808 Cedarwood Ave",
  age: 33,
  email: "jack.jackson@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409750/canva-blue-modern-facebook-profile-picture-mtu4sNVuKIU_gsrdrn.jpg')
  user.profile_picture.attach(io: file, filename: 'user_ten.png', content_type: 'image/png')
end

User.create!(
  first_name: "Kara",
  last_name: "White",
  address: "909 Willow Dr",
  age: 24,
  email: "kara.white@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409749/wp-2021-01-linkedin-profile-picture-after_h56daq.jpg')
  user.profile_picture.attach(io: file, filename: 'user_eleven.png', content_type: 'image/png')
end

User.create!(
  first_name: "Leo",
  last_name: "Martin",
  address: "1010 Redwood Ln",
  age: 36,
  email: "leo.martin@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409749/1-intro-photo-final_qllg43.jpg')
  user.profile_picture.attach(io: file, filename: 'user_twelve.png', content_type: 'image/png')
end

User.create!(
  first_name: "Mia",
  last_name: "Clark",
  address: "1111 Aspen Blvd",
  age: 21,
  email: "mia.clark@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725358970/sensitive-black-woman_jepzmi.jpg')
  user.profile_picture.attach(io: file, filename: 'user_thirteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Nathan",
  last_name: "Harris",
  address: "1212 Spruce St",
  age: 30,
  email: "nathan.harris@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409753/premium_photo-1673866484792-c5a36a6c025e_vcqehd.jpg')
  user.profile_picture.attach(io: file, filename: 'user_fourteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Paul",
  last_name: "Scott",
  address: "1414 Chestnut Ave",
  age: 34,
  email: "paul.scott@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409915/canva-brown-and-light-brown_2C-circle-framed-instagram-profile-picture-2PE9qJLmPac_zgoh18.jpg')
  user.profile_picture.attach(io: file, filename: 'user_fifteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Quinn",
  last_name: "Young",
  address: "1515 Cypress Dr",
  age: 29,
  email: "quinn.young@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409956/p-5_gdd0hk.jpg')
  user.profile_picture.attach(io: file, filename: 'user_sixteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Rachel",
  last_name: "Lopez",
  address: "1616 Willow Rd",
  age: 23,
  email: "rachel.lopez@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725358970/My_2520Beautiful_2520Black_2520Hair_25201_tbfonv.jpg')
  user.profile_picture.attach(io: file, filename: 'user_seventeen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Sam",
  last_name: "Lee",
  address: "1717 Evergreen Blvd",
  age: 28,
  email: "sam.lee@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1724409956/p-5_gdd0hk.jpg')
  user.profile_picture.attach(io: file, filename: 'user_eighteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Tina",
  last_name: "Baker",
  address: "1818 Pine Tree Ln",
  age: 26,
  email: "tina.baker@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725358968/1000_F_170776141_DWQjn2F5zyWSUUH7tUBYELLycMJyXbxa_dets5a.jpg')
  user.profile_picture.attach(io: file, filename: 'user_nineteen.png', content_type: 'image/png')
end

User.create!(
  first_name: "Uma",
  last_name: "Carter",
  address: "1919 Magnolia Ct",
  age: 27,
  email: "uma.carter@test.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725358967/beauty-portrait-of-young-asian-woman-on-the-light-and-shadow-background_jce4jl.jpg')
  user.profile_picture.attach(io: file, filename: 'user_twenty.png', content_type: 'image/png')
end
User.create!(
  first_name: "Norika",
  last_name: "Niyungeko",
  address: "leWagon",
  age: 19,
  email: "nori.niyu@gmail.com",
  password: "password",
  password_confirmation: "password"
).tap do |user|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725545721/truc_o46j1b.png')
  user.profile_picture.attach(io: file, filename: 'user_twenty_one.png', content_type: 'image/png')
end

# creating meals, connected to arbitrary users : 20 meals
Meal.create!(
  cuisine: "Italian",
  description: "A classic Margherita pizza with fresh basil.",
  recipe: "1. Prepare the dough and let it rise. 2. Spread tomato sauce evenly over the dough. 3. Add fresh mozzarella cheese. 4. Bake in a preheated oven at 475°F until golden. 5. Garnish with fresh basil leaves before serving.",
  user: User.all.sample,
  name: "Margherita Pizza"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359127/margherita-pizza-500x500_mgsneo.jpg')
  meal.photo.attach(io: file, filename: 'meal_one.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Mexican",
  description: "Spicy vegan tacos with black beans and avocado.",
  recipe: "1. Warm the tortillas in a pan. 2. Prepare the black bean filling by sautéing onions, garlic, and spices. 3. Mash the avocado and add lime juice. 4. Assemble the tacos with beans, avocado, and fresh salsa. 5. Serve with a wedge of lime.",
  user: User.all.sample,
  name: "Vegan Black Bean Tacos"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359542/Veggie-Tacos4577_emwira.jpg')
  meal.photo.attach(io: file, filename: 'meal_two.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Japanese",
  description: "A light and refreshing miso soup.",
  recipe: "1. Boil water and add dashi powder. 2. Dissolve miso paste in the broth. 3. Add tofu cubes and seaweed. 4. Simmer for 5 minutes. 5. Garnish with chopped green onions before serving.",
  user: User.all.sample,
  name: "Miso Soup"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359560/Miso-Soup-8297-I_sstfh1.jpg')
  meal.photo.attach(io: file, filename: 'meal_three.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Indian",
  description: "A rich and creamy butter chicken.",
  recipe: "1. Marinate chicken in yogurt and spices. 2. Cook the chicken until browned. 3. Prepare the sauce with tomatoes, cream, and butter. 4. Simmer the chicken in the sauce. 5. Serve with basmati rice and naan.",
  user: User.all.sample,
  name: "Butter Chicken"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359589/Butter-Chicken_x1xnk8.jpg')
  meal.photo.attach(io: file, filename: 'meal_four.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Thai",
  description: "A spicy and tangy Thai green curry.",
  recipe: "1. Sauté green curry paste in oil. 2. Add coconut milk and bring to a simmer. 3. Add vegetables and tofu. 4. Cook until vegetables are tender. 5. Serve with jasmine rice.",
  user: User.all.sample,
  name: "Thai Green Curry"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359609/vegan-green-curry-22-sq_irffxg.jpg')
  meal.photo.attach(io: file, filename: 'meal_five.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Greek",
  description: "A fresh and light Greek salad with feta cheese.",
  recipe: "1. Chop tomatoes, cucumbers, and red onions. 2. Toss with olives and feta cheese. 3. Drizzle with olive oil and lemon juice. 4. Season with salt, pepper, and oregano. 5. Serve chilled.",
  user: User.all.sample,
  name: "Greek Salad"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725360568/chopped-greek-salad-with-homemade-greek-vinaigrette_inxj0i.jpg')
  meal.photo.attach(io: file, filename: 'meal_six.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Chinese",
  description: "A savory and sweet stir-fried tofu with vegetables.",
  recipe: "1. Press tofu to remove excess water. 2. Stir-fry tofu until golden brown. 3. Add sliced vegetables and stir-fry until tender. 4. Pour in a sauce made of soy sauce, sugar, and cornstarch. 5. Serve with steamed rice.",
  user: User.all.sample,
  name: "Vegetarian Stir-Fried Tofu"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359658/How-to-Make-Tofu-Stir-Fry_heaaxq.jpg')
  meal.photo.attach(io: file, filename: 'meal_seven.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "French",
  description: "A delicate and fluffy cheese souffle.",
  recipe: "1. Prepare a béchamel sauce. 2. Stir in grated cheese until melted. 3. Beat egg whites until stiff peaks form. 4. Fold the egg whites into the cheese mixture. 5. Bake until puffed and golden.",
  user: User.all.sample,
  name: "Cheese Souffle"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359699/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2019__01__20190116-cheese-souffle-vicky-wasik-28-b1ca9f82841c4bf6af75d753f8ea5a4e_ufkmzj.jpg')
  meal.photo.attach(io: file, filename: 'meal_eight.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Spanish",
  description: "A traditional Spanish paella with seafood.",
  recipe: "1. Sauté onions, garlic, and bell peppers. 2. Add rice and cook until lightly toasted. 3. Pour in saffron-infused broth. 4. Add seafood and peas. 5. Cook until rice is tender and seafood is cooked through.",
  user: User.all.sample,
  name: "Seafood Paella"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359731/0E2A1651-2_jglxjz.jpg')
  meal.photo.attach(io: file, filename: 'meal_nine.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Middle Eastern",
  description: "A smooth and creamy hummus with tahini.",
  recipe: "1. Blend chickpeas, tahini, and garlic in a food processor. 2. Add lemon juice and olive oil. 3. Process until smooth. 4. Season with salt and cumin. 5. Serve with pita bread and fresh vegetables.",
  user: User.all.sample,
  name: "Hummus"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725360466/8057539-whipped-hummus-beauty-square-8a92de3708aa424cbe6551732dea2880_yp7bar.jpg')
  meal.photo.attach(io: file, filename: 'meal_ten.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Italian",
  description: "A classic spaghetti with garlic and olive oil.",
  recipe: "1. Cook spaghetti until al dente. 2. Sauté garlic in olive oil until golden. 3. Toss spaghetti in the garlic oil. 4. Add red pepper flakes and parsley. 5. Serve with grated Parmesan cheese.",
  user: User.all.sample,
  name: "Spaghetti Aglio e Olio"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359817/roasted-tomato-sauce-portion-800x1200_l0hyid.jpg')
  meal.photo.attach(io: file, filename: 'meal_eleven.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Italian",
  description: "A creamy and delicious risotto with mushrooms.",
  recipe: "1. Sauté onions and garlic in butter. 2. Add Arborio rice and cook until translucent. 3. Stir in white wine and let it absorb. 4. Gradually add broth, stirring constantly until rice is tender. 5. Fold in sautéed mushrooms and Parmesan cheese.",
  user: User.all.sample,
  name: "Mushroom Risotto"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359862/tempura-veggies-18_exejc1.jpg')
  meal.photo.attach(io: file, filename: 'meal_twelve.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Japanese",
  description: "Crispy tempura vegetables served with dipping sauce.",
  recipe: "1. Prepare tempura batter by mixing flour, cold water, and an egg. 2. Dip vegetables into the batter. 3. Fry in hot oil until crispy and golden. 4. Drain on paper towels. 5. Serve with tempura dipping sauce.",
  user: User.all.sample,
  name: "Vegetable Tempura"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359862/tempura-veggies-18_exejc1.jpg')
  meal.photo.attach(io: file, filename: 'meal_thirteen.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Indian",
  description: "A spicy and aromatic chana masala with chickpeas.",
  recipe: "1. Sauté onions, garlic, and ginger. 2. Add tomatoes and cook until soft. 3. Stir in spices like cumin, coriander, and turmeric. 4. Add chickpeas and simmer in the sauce. 5. Garnish with fresh cilantro and serve with rice.",
  user: User.all.sample,
  name: "Chana Masala"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359895/vegan-chana-masala-recipe-2_jilvph.jpg')
  meal.photo.attach(io: file, filename: 'meal_fourteen.png', content_type: 'image/png')
end

Meal.create!(
  cuisine: "Greek",
  description: "A savory spanakopita with spinach and feta.",
  recipe: "1. Sauté spinach, onions, and garlic. 2. Mix in crumbled feta cheese and seasonings. 3. Layer phyllo dough in a baking dish, brushing with butter. 4. Add spinach mixture and top with more phyllo dough. 5. Bake until golden and crispy.",
  user: User.all.sample,
  name: "Spanakopita"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359930/02SPANAKOPITArex-cut-klhz-googleFourByThree_egyerv.jpg')
  meal.photo.attach(io: file, filename: 'meal_fifteen.png', content_type: 'image/png')
end

# Potato Hash
Meal.create!(
  cuisine: "French",
  description: "A savory potato hash with onions and garlic.",
  recipe: "1. Dice potatoes and sauté with onions and garlic until golden. 2. Season with salt and pepper. 3. Serve hot, garnished with parsley.",
  user: User.all.sample,
  name: "Potato Hash"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359945/k_2FPhoto_2FRecipe_20Ramp_20Up_2F2021-07-Potato-Hash_2FPOTATO-HASH_KitchnKitchn3135-1-01_nncsiw.jpg')
  meal.photo.attach(io: file, filename: 'meal_sixteen.png', content_type: 'image/png')
end

# Vegetable Fried Rice
Meal.create!(
  cuisine: "Chinese",
  description: "A savory egg fried rice with vegetables, perfect for breakfast.",
  recipe: "1. Scramble eggs in a hot wok. 2. Add cold cooked rice and stir-fry with peas, carrots, and green onions. 3. Season with soy sauce and sesame seeds. 4. Serve hot.",
  user: User.all.sample,
  name: "Vegetable Fried Rice"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359977/sweet-and-sour-spicy-thai-fried-rice-easy-vegan-meal-with-vegetables-thumb_cjnlka.jpg')
  meal.photo.attach(io: file, filename: 'meal_seventeen.png', content_type: 'image/png')
end

# Avocado Toast
Meal.create!(
  cuisine: "Mexican",
  description: "Creamy avocado spread on toasted bread, served with a squeeze of lime.",
  recipe: "1. Mash avocados and season with lime juice, salt, and pepper. 2. Spread on toasted bread. 3. Garnish with cilantro and a sprinkle of red pepper flakes.",
  user: User.all.sample,
  name: "Avocado Toast"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725359994/IMG_0303-scaled_ctpggv.jpg')
  meal.photo.attach(io: file, filename: 'meal_eighteen.png', content_type: 'image/png')
end

# Fruit Salad
Meal.create!(
  cuisine: "Thai",
  description: "A refreshing fruit salad with papaya and other available fruits.",
  recipe: "1. Dice papaya and mix with chopped cucumber and lime juice. 2. Add a touch of honey if desired. 3. Serve chilled.",
  user: User.all.sample,
  name: "Fruit Salad"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725360045/Fruit-Salad-Recipe-500x500_dv4hu4.jpg')
  meal.photo.attach(io: file, filename: 'meal_nineteen.png', content_type: 'image/png')
end

# Vegetable Couscous Breakfast Bowl
Meal.create!(
  cuisine: "Middle Eastern",
  description: "A light breakfast bowl of couscous with vegetables and a touch of cumin.",
  recipe: "1. Prepare couscous as directed. 2. Sauté vegetables and mix with couscous. 3. Season with cumin and coriander. 4. Serve warm.",
  user: User.all.sample,
  name: "Vegetable Couscous Breakfast Bowl"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725360064/Couscous-Salad-Recipe-6-2_cgtdh5.jpg')
  meal.photo.attach(io: file, filename: 'meal_twenty.png', content_type: 'image/png')
end

# Tomato and Cucumber Breakfast Soup
Meal.create!(
  cuisine: "Spanish",
  description: "A refreshing and light tomato and cucumber soup.",
  recipe: "1. Blend tomatoes and cucumber with a touch of olive oil and vinegar. 2. Season with salt and chill. 3. Serve cold with a drizzle of olive oil.",
  user: User.all.sample,
  name: "Tomato and Cucumber Breakfast Soup"
).tap do |meal|
  file = URI.open('https://res.cloudinary.com/do9ythsfg/image/upload/v1725360077/tomato-soup-recipe_nwzek2.jpg')
  meal.photo.attach(io: file, filename: 'meal_twenty_one.png', content_type: 'image/png')
end

# all the ingredients
Ingredient.create!(
  name: "Tomatoes",
  unit: "grams"
)

Ingredient.create!(
  name: "Broth",
  unit: "ml"
)

Ingredient.create!(
  name: "Basil",
  unit: "grams"
)

Ingredient.create!(
  name: "Avocado",
  unit: "pieces"
)

Ingredient.create!(
  name: "Lime",
  unit: "pieces"
)

Ingredient.create!(
  name: "Black beans",
  unit: "grams"
)

Ingredient.create!(
  name: "Salsa",
  unit: "tablespoons"
)

Ingredient.create!(
  name: "Onion",
  unit: "grams"
)

Ingredient.create!(
  name: "Garlic",
  unit: "cloves"
)

Ingredient.create!(
  name: "Cucumber",
  unit: "grams"
)

Ingredient.create!(
  name: "Red onions",
  unit: "grams"
)

Ingredient.create!(
  name: "Bell peppers",
  unit: "grams"
)

Ingredient.create!(
  name: "Seaweed",
  unit: "grams"
)

Ingredient.create!(
  name: "Green onions",
  unit: "stalks"
)

Ingredient.create!(
  name: "Spinach",
  unit: "grams"
)

Ingredient.create!(
  name: "Potatoes",
  unit: "grams"
)

Ingredient.create!(
  name: "Green beans",
  unit: "grams"
)

Ingredient.create!(
  name: "Mushrooms",
  unit: "grams"
)

Ingredient.create!(
  name: "Carrots",
  unit: "grams"
)

Ingredient.create!(
  name: "Papaya",
  unit: "grams"
)

Ingredient.create!(
  name: "Cilantro",
  unit: "grams"
)

Ingredient.create!(
  name: "Chickpeas",
  unit: "grams"
)

Ingredient.create!(
  name: "Green peas",
  unit: "grams"
)
Ingredient.create!(
  name: "Peas",
  unit: "grams"
)

Ingredient.create!(
  name: "Chicken",
  unit: "grams"
)

Ingredient.create!(
  name: "Tofu",
  unit: "grams"
)

Ingredient.create!(
  name: "Eggs",
  unit: "egg "
)

Ingredient.create!(
  name: "Feta cheese",
  unit: "grams"
)

Ingredient.create!(
  name: "Mozzarella cheese",
  unit: "grams"
)

Ingredient.create!(
  name: "Tortillas",
  unit: "pieces"
)

Ingredient.create!(
  name: "Rice",
  unit: "grams"
)

Ingredient.create!(
  name: "Arborio rice",
  unit: "grams"
)

Ingredient.create!(
  name: "Spaghetti",
  unit: "grams"
)

Ingredient.create!(
  name: "Couscous",
  unit: "grams"
)

Ingredient.create!(
  name: "Butter",
  unit: "grams"
)

Ingredient.create!(
  name: "Parmesan cheese",
  unit: "grams"
)

Ingredient.create!(
  name: "Cream",
  unit: "ml"
)

Ingredient.create!(
  name: "Milk",
  unit: "ml"
)

Ingredient.create!(
  name: "Tahini",
  unit: "grams"
)

Ingredient.create!(
  name: "Cumin",
  unit: "grams"
)

Ingredient.create!(
  name: "Coriander",
  unit: "grams"
)

Ingredient.create!(
  name: "Turmeric",
  unit: "grams"
)

Ingredient.create!(
  name: "Red pepper flakes",
  unit: "grams"
)

Ingredient.create!(
  name: "Salt",
  unit: "grams"
)
Ingredient.create!(
  name: "Sesame seeds",
  unit: "grams"
)

Ingredient.create!(
  name: "Black pepper",
  unit: "grams"
)

Ingredient.create!(
  name: "Oregano",
  unit: "grams"
)

Ingredient.create!(
  name: "Saffron",
  unit: "grams"
)

Ingredient.create!(
  name: "Parsley",
  unit: "grams"
)

Ingredient.create!(
  name: "Olive oil",
  unit: "ml"
)

Ingredient.create!(
  name: "Soy sauce",
  unit: "ml"
)

Ingredient.create!(
  name: "Fish sauce",
  unit: "ml"
)

Ingredient.create!(
  name: "Vinegar",
  unit: "ml"
)

Ingredient.create!(
  name: "Yogurt",
  unit: "cups"
)
Ingredient.create!(
  name: "Pita bread",
  unit: "slices"
)
Ingredient.create!(
  name: "Coconut milk",
  unit: "ml"
)
Ingredient.create!(
  name: "Palm sugar",
  unit: "grams"
)

Ingredient.create!(
  name: "Sugar",
  unit: "grams"
)

Ingredient.create!(
  name: "Cornstarch",
  unit: "grams"
)
Ingredient.create!(
  name: "Cold water",
  unit: "cups"
)
Ingredient.create!(
  name: "Flour",
  unit: "cups"
)

Ingredient.create!(
  name: "Dashi powder",
  unit: "grams"
)

Ingredient.create!(
  name: "Miso paste",
  unit: "grams"
)
Ingredient.create!(
  name: "Phyllo dough",
  unit: "grams"
)

Ingredient.create!(
  name: "White wine",
  unit: "ml"
)

Ingredient.create!(
  name: "Green curry paste",
  unit: "tbs"
)

Ingredient.create!(
  name: "Croutons",
  unit: "grams"
)

Ingredient.create!(
  name: "Tempura batter mix",
  unit: "grams"
)
Ingredient.create!(
  name: "Shrimp",
  unit: "grams"
)
Ingredient.create!(
  name: "Lemon juice",
  unit: "ml"
)
Ingredient.create!(
  name: "Peanuts",
  unit: "grams"
)

# margherita pizza
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tomatoes"),
  meal: Meal.find_by(name: "Margherita Pizza"),
  quantity: 300
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Mozzarella cheese"),
  meal: Meal.find_by(name: "Margherita Pizza"),
  quantity: 200
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Basil"),
  meal: Meal.find_by(name: "Margherita Pizza"),
  quantity: 15
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Olive oil"),
  meal: Meal.find_by(name: "Margherita Pizza"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Salt"),
  meal: Meal.find_by(name: "Margherita Pizza"),
  quantity: 5
)

# Vegan Black Bean Tacos Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tortillas"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos"),
  quantity: 6
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Black beans"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos"),
  quantity: 250
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Avocado"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos"),
  quantity: 2
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Lime"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos"),
  quantity: 1
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Salsa"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos"),
  quantity: 150
)

# Miso Soup Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Dashi powder"),
  meal: Meal.find_by(name: "Miso Soup"),
  quantity: 10
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Miso paste"),
  meal: Meal.find_by(name: "Miso Soup"),
  quantity: 50
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tofu"),
  meal: Meal.find_by(name: "Miso Soup"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Seaweed"),
  meal: Meal.find_by(name: "Miso Soup"),
  quantity: 10
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Green onions"),
  meal: Meal.find_by(name: "Miso Soup"),
  quantity: 5
)

# Butter Chicken Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Chicken"),
  meal: Meal.find_by(name: "Butter Chicken"),
  quantity: 500
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Yogurt"),
  meal: Meal.find_by(name: "Butter Chicken"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tomatoes"),
  meal: Meal.find_by(name: "Butter Chicken"),
  quantity: 200
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cream"),
  meal: Meal.find_by(name: "Butter Chicken"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Butter"),
  meal: Meal.find_by(name: "Butter Chicken"),
  quantity: 50
)

# Thai Green Curry Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Green curry paste"),
  meal: Meal.find_by(name: "Thai Green Curry"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Coconut milk"),
  meal: Meal.find_by(name: "Thai Green Curry"),
  quantity: 400
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tofu"),
  meal: Meal.find_by(name: "Thai Green Curry"),
  quantity: 200
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Bell peppers"),
  meal: Meal.find_by(name: "Thai Green Curry"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Spinach"),
  meal: Meal.find_by(name: "Thai Green Curry"),
  quantity: 100
)

# Greek Salad Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tomatoes"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 200
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cucumber"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Red onions"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Feta cheese"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Olive oil"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Lemon juice"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 20
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Oregano"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Salt"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Black pepper"),
  meal: Meal.find_by(name: "Greek Salad"),
  quantity: 3
)

# Vegetarian Stir-Fried Tofu Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tofu"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 300
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Bell peppers"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Onion"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Soy sauce"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Sugar"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 10
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cornstarch"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Rice"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu"),
  quantity: 200
)

# Cheese Souffle Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Eggs"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 4
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Parmesan cheese"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cream"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 50
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Butter"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Flour"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 20
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Milk"),
  meal: Meal.find_by(name: "Cheese Souffle"),
  quantity: 100
)

# Seafood Paella Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Rice"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 250
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Shrimp"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 300
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Onion"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 150
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Bell peppers"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Saffron"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 2
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Green peas"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Broth"),
  meal: Meal.find_by(name: "Seafood Paella"),
  quantity: 500
)

# Hummus Ingredients
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Chickpeas"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 300
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tahini"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 100
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 3
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Lemon juice"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Olive oil"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 30
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cumin"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Salt"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 5
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Pita bread"),
  meal: Meal.find_by(name: "Hummus"),
  quantity: 4
)

# Spaghetti Aglio e Olio
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Spaghetti"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 200
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 4
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Olive oil"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 60
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Red pepper flakes"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Parsley"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 2
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Parmesan cheese"),
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio"),
  quantity: 50
)

# Mushroom Risotto
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Rice"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 200
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Mushrooms"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 150
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Butter"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 30
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "White wine"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 100
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Parmesan cheese"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 50
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Broth"),
  meal: Meal.find_by(name: "Mushroom Risotto"),
  quantity: 500
)

# Vegetable Tempura
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Flour"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 100
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Eggs"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cold water"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 150
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tempura batter mix"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 100
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Bell peppers"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 300
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Olive oil"),
  meal: Meal.find_by(name: "Vegetable Tempura"),
  quantity: 500
)

# Chana Masala
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Chickpeas"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 400
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Onion"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 3
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Tomatoes"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 2
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cumin"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Coriander"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Turmeric"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Cilantro"),
  meal: Meal.find_by(name: "Chana Masala"),
  quantity: 2
)

# Spanakopita
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Spinach"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 400
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Feta cheese"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 150
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Phyllo dough"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 10
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Onion"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 1
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Garlic"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 2
)
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: "Butter"),
  meal: Meal.find_by(name: "Spanakopita"),
  quantity: 50
)
# Potato Hash
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Potatoes'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Onion'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Garlic'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Olive oil'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Salt'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Black pepper'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Parsley'),
  meal: Meal.find_by(name: 'Potato Hash'),
  quantity: '1'
)
# Vegetable fried rice
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Rice'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Eggs'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Green onions'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Carrots'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Peas'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Soy sauce'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Sesame seeds'),
  meal: Meal.find_by(name: 'Vegetable Fried Rice'),
  quantity: '1'
)
# guacomole

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Avocado'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Tomatoes'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Onion'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Cilantro'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Lime'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Salt'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Tortillas'),
  meal: Meal.find_by(name: 'Avocado Toast'),
  quantity: '1'
)
# papaya salad
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Papaya'),
  meal: Meal.find_by(name: 'Fruit Salad'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Lime'),
  meal: Meal.find_by(name: 'Fruit Salad'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Palm sugar'),
  meal: Meal.find_by(name: 'Fruit Salad'),
  quantity: '1'
)

# Vegetable Couscous
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Couscous'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Green beans'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Carrots'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Cumin'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Coriander'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Olive oil'),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl'),
  quantity: '2'
)
# Gazpacho
MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Tomatoes'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '4'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Cucumber'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Bell peppers'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Garlic'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Olive oil'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '2'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Vinegar'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '1'
)

MealIngredient.create!(
  ingredient: Ingredient.find_by(name: 'Croutons'),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup'),
  quantity: '1'
)

["dairy free", "gluten free", "vegan", "vegetarian", "pescatarian", "peanuts", "dairy", "meat"].each do |diet|
  Diet.create!(
    name: diet
  )
end

MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: "Margherita Pizza")
)

# Vegan Black Bean Tacos (No animal products, gluten-free tortillas assumed, so also dairy-free and vegan)
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy free"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos")
)

MealDiet.create!(
  diet: Diet.find_by(name: "gluten free"),
  meal: Meal.find_by(name: "Vegan Black Bean Tacos")
)

# Miso Soup (Typically dairy-free, but not vegan due to miso paste; it’s also vegetarian and can be gluten-free)
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: "Miso Soup")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy free"),
  meal: Meal.find_by(name: "Miso Soup")
)

# Butter Chicken (Contains chicken, so it is a meat dish; contains dairy)
MealDiet.create!(
  diet: Diet.find_by(name: "meat"),
  meal: Meal.find_by(name: "Butter Chicken")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy"),
  meal: Meal.find_by(name: "Butter Chicken")
)

# Thai Green Curry (Contains tofu and coconut milk; it’s dairy-free and vegetarian, but not vegan due to curry paste)
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: "Thai Green Curry")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy free"),
  meal: Meal.find_by(name: "Thai Green Curry")
)

# Greek Salad (Contains feta cheese, so it is not dairy-free or vegan, but is vegetarian)
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: "Greek Salad")
)

# Vegetarian Stir-Fried Tofu (Contains tofu, so it's vegan and dairy-free; can be gluten-free with proper sauce)
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy free"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu")
)

MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: "Vegetarian Stir-Fried Tofu")
)

# Cheese Souffle (Contains cheese and eggs, so it is dairy and meat; not vegan or dairy-free)
MealDiet.create!(
  diet: Diet.find_by(name: "dairy"),
  meal: Meal.find_by(name: "Cheese Souffle")
)

MealDiet.create!(
  diet: Diet.find_by(name: "meat"),
  meal: Meal.find_by(name: "Cheese Souffle")
)

# Seafood Paella (Contains seafood and broth, so it’s pescatarian; not vegan or dairy-free)
MealDiet.create!(
  diet: Diet.find_by(name: "pescatarian"),
  meal: Meal.find_by(name: "Seafood Paella")
)

# Hummus (Contains tahini and chickpeas, so it’s vegan and dairy-free; typically not gluten-free due to cross-contamination in commercial settings)
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: "Hummus")
)

MealDiet.create!(
  diet: Diet.find_by(name: "dairy free"),
  meal: Meal.find_by(name: "Hummus")
)

# Spaghetti Aglio e Olio
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"), # Contains Parmesan cheese
  meal: Meal.find_by(name: "Spaghetti Aglio e Olio")
)

# Mushroom Risotto
MealDiet.create!(
  diet: Diet.find_by(name: "dairy"), # Contains Parmesan cheese and Butter
  meal: Meal.find_by(name: "Mushroom Risotto")
)

# Vegetable Tempura
MealDiet.create!(
  diet: Diet.find_by(name: "gluten free"), # Tempura batter can be made gluten-free if specified
  meal: Meal.find_by(name: "Vegetable Tempura")
)

# Chana Masala
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"), # Made with chickpeas and no animal products
  meal: Meal.find_by(name: "Chana Masala")
)

# Spanakopita
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"), # Contains Feta cheese and Phyllo dough
  meal: Meal.find_by(name: "Spanakopita")
)

# potato hash
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: 'Potato Hash')
)
# Fried Rice
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: 'Vegetable Fried Rice')
)
# Guac
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: 'Avocado Toast')
)
# Papaya
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: 'Fruit Salad')
)
# couscous
MealDiet.create!(
  diet: Diet.find_by(name: "vegetarian"),
  meal: Meal.find_by(name: 'Vegetable Couscous Breakfast Bowl')
)
# Gazpazho
MealDiet.create!(
  diet: Diet.find_by(name: "vegan"),
  meal: Meal.find_by(name: 'Tomato and Cucumber Breakfast Soup')
)

# ASSIGING A USER TO A DIET
15.times do
  UserDiet.create!(
    user: User.all.sample,
    diet: Diet.all.sample
  )
end

# ASIGNING A USER TO A MEAL WITH DATE

# Spanakopita
UserMeal.create!(
  date: "2024-09-06",
  time_of_day: "Lunch", # Can be served as a savory lunch option
  meal: Meal.find_by(name: "Spanakopita"),
  user: User.find_by(first_name: "Norika")
)

# Vegetable Fried Rice
UserMeal.create!(
  date: '2024-09-08',
  time_of_day: "Lunch", # Often served as a lighter meal or side dish for lunch
  meal: Meal.find_by(name: "Vegetable Fried Rice"),
  user: User.all.sample
)

# Fruit Salad
UserMeal.create!(
  date: '2024-09-10',
  time_of_day: "Breakfast", # Typically served as a hearty dinner meal
  meal: Meal.find_by(name: "Fruit Salad"),
  user: User.find_by(first_name: "Norika")
)

# Tomato breakfast
UserMeal.create!(
  date: '2024-09-12',
  time_of_day: "Snack", # Can be served as a savory lunch option
  meal: Meal.find_by(name: "Hummus"),
  user: User.find_by(first_name: "Norika")
)
UserMeal.create!(
  date: '2024-09-13',
  time_of_day: "Breakfast", # Can be served as a savory lunch option
  meal: Meal.find_by(name: "Potato Hash"),
  user: User.find_by(first_name: "Norika")
)
UserMeal.create!(
  date: '2024-09-11',
  time_of_day: "Lunch", # Can be served as a savory lunch option
  meal: Meal.find_by(name: "Miso Soup"),
  user: User.find_by(first_name: "Norika")
)
UserMeal.create!(
  date: '2024-09-09',
  time_of_day: "Breakfast", # Can be served as a savory lunch option
  meal: Meal.find_by(name: "Avocado Toast"),
  user: User.find_by(first_name: "Norika")
)

Review.create!(
  content: "Delicious and satisfying! The flavors were perfect.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "A wonderful meal with just the right amount of spice. Will definitely try again.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "The dish was well-presented and tasted great. Could use a bit more seasoning.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Very flavorful and fresh. Perfect balance of ingredients.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "It was good, but I expected a bit more based on the description.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Absolutely loved it! The texture and taste were spot-on.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Not bad, but it didn’t stand out. Could use more variety in flavors.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "A delightful meal! The presentation was fantastic and the taste was even better.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "The meal was good, but it took a bit longer to prepare than expected.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Enjoyed every bite! The balance of flavors was really well done.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "A hearty and filling dish. Great for a satisfying meal.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Tasty, but I felt like it needed a bit more of a kick.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Very enjoyable and comforting. Perfect for a cozy meal at home.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "A bit too bland for my taste. Could use more seasoning or spices.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Fantastic meal! The ingredients were fresh and the flavors were spot on.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "The meal was average. Nothing particularly memorable.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "A perfect blend of flavors. I would definitely recommend this dish.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "The presentation was impressive, and the taste was great. I’d love to have it again.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Not quite what I was expecting. It was decent but lacked depth in flavor.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Very flavorful and well-cooked. A nice surprise!",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "The meal was alright. I’ve had better but also worse.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)

Review.create!(
  content: "Excellent meal! The combination of ingredients was perfect.",
  rating: rand(1..5),
  meal: Meal.all.sample,
  user: User.all.sample
)
