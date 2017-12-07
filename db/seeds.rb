# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "***--- SEEDING PROCESS ---***"

Feature.destroy_all
HouseOption.destroy_all
Review.destroy_all
Booking.destroy_all
House.destroy_all
Profile.destroy_all
User.destroy_all

Feature.create!(name: "Television")
Feature.create!(name: "Wifi")
Feature.create!(name: "Pets allowed")

puts "***--- USER & PROFILE CREATION ---***"# USER & PROFILE CREATION

puts "***--- HOUSE MANAGER #1 CREATION ---***"
  user = User.create!(
    email: "aurelien@gmail.com",
    password: "123456",
    admin: true,
  )
  prof = Profile.create!(
    first_name: "Aurélien",
    last_name: "Dobbels",
    phone_number: "+352.661.14.24.31",
    birthday: "12/10/1982",
    address: "10 rue de Gand",
    post_code: 59800,
    city: "Lille",
    country: "France",
    photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512130127/fpoonxdaz3et6ngzu82d.png",
    user_id: user.id,
  )

puts "***--- HOUSE MANAGER #2 CREATION ---***"
  user = User.create!(
    email: "thomas@gmail.com",
    password: "123456",
    admin: true,
  )
  prof = Profile.create!(
    first_name: "Thomas",
    last_name: "Huncker",
    phone_number: "+33.6.12.34.56.78",
    birthday: "10/01/1992",
    address: "10 rue des postes",
    post_code: 59000,
    city: "Lille",
    country: "France",
    photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512480876/profil_wkcgwb.png",
    user_id: user.id,
  )

puts "***--- TENANT #1 CREATION ---***"
  user = User.create!(
    email: "antoine@gmail.com",
    password: "123456",
    admin: false,
  )
  prof = Profile.create!(
    first_name: "Antoine",
    last_name: "Staumont",
    phone_number: "+33.6.98.76.54.32",
    birthday: "20/02/1978",
    address: "10 rue de cambrai",
    post_code: 59000,
    city: "Lille",
    country: "France",
    photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512142844/h1jmpwfacbmnb5bagah0.jpg",
    user_id: user.id,
  )

puts "***--- TENANT #2 CREATION ---***"
  user = User.create!(
    email: "maxime@gmail.com",
    password: "123456",
    admin: false,
  )
  prof = Profile.create!(
    first_name: "Maxime",
    last_name: "Godart-Haupet",
    phone_number: "+33.6.54.73.08.12",
    birthday: "24/07/1995",
    address: "45 rue de Marquillies",
    post_code: 59000,
    city: "Lille",
    country: "France",
    photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512134866/grywolnslhab6bkayc3n.jpg",
    user_id: user.id,
  )

puts "***--- HOUSE CREATION ---***"# USER & PROFILE CREATION
House.create!(
    name:"Lorem ipsum dolor sit amet 1",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "800",
    capacity: "6",
    address:"19 rue de Gand",
    post_code:"59000",
    city:"Lille",
    country: "France",
    photo_urls:[
                "http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg",
                "http://house-pictures.net/wp-content/uploads/2014/06/stone-house-with-swimming-pool-flat-roof-pictures-16.jpg",
                "http://www.luxehouses.com.au/_admn/wp-content/uploads/2014/06/171.jpg"
                ]
  )
puts "***--- HOUSE #1 DONE ---***"
sleep 2

House.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    price: "850",
    capacity: "8",
    address:"73 rue Royale",
    post_code:"59800",
    city:"Lille",
    country: "France",
    photo_urls:[
                "http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg"
                ]
  )
puts "***--- HOUSE #2 DONE ---***"
sleep 2
House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "90",
    capacity: "4",
    address:"23 rue Nationale",
    post_code:"59800",
    city:"Lille",
    country: "France",
    photo_urls:[
                "http://house-pictures.net/wp-content/uploads/2014/06/stone-house-with-swimming-pool-flat-roof-pictures-16.jpg"
                ]
  )
puts "***--- HOUSE #3 DONE ---***"
sleep 2
House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "110",
    capacity: "3",
    address:"23 rue de Metz",
    post_code:"59800",
    city:"Lille",
    country: "France",
    photo_urls:[
                "http://house-pictures.net/wp-content/uploads/2014/06/stone-house-with-swimming-pool-flat-roof-pictures-16.jpg"
                ]
  )
puts "***--- HOUSE #4 DONE ---***"
sleep 2
House.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
    price: "90",
    capacity: "4",
    address:"23 Avenue de l'Hippodrome",
    post_code:"59130",
    city:"Lambersart",
    country: "France",
    photo_urls:[
                "http://www.planete-deco.fr/wp-content/uploads/2017/02/FS1.jpg"
                ]
  )
puts "***--- HOUSE #5 DONE ---***"
sleep 2
House.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere purus ac ex volutpat, ut lobortis ligula.",
    price: "90",
    capacity: "8",
    address:"23 rue Godefroy",
    post_code:"59110",
    city:"La Madeleine",
    country: "France",
    photo_urls:[
                "http://www.planete-deco.fr/wp-content/uploads/2017/02/FS1.jpg"
                ]
  )
puts "***--- HOUSE #6 DONE ---***"
sleep 2
House.create!(
    name:"vitae porttitor elit dui vitae felis.",
    description:"Nunc ornare auctor nibh, ac pellentesque neque ultricies rhoncus. Cras vehicula, odio eget pharetra varius, metus turpis efficitur erat, quis sagittis eros massa et leo.",
    price: "120",
    capacity: "8",
    address:"74 Avenue du Maréchal Foch",
    post_code:"59700",
    city:"Marcq-en-Baroeul",
    country: "France",
    photo_urls:[
                "http://www.book-a-flat.com/photo/paris/12040/thumbnail/salon.jpg"
                ]
  )
puts "***--- HOUSE #7 DONE ---***"
sleep 2
House.create!(
    name:"Maecenas porttitor lorem et accumsan vulputate",
    description:"Nulla molestie aliquet turpis, in ultrices sem egestas consequat. Morbi feugiat fermentum neque, sed rhoncus magna faucibus eget. Nulla eleifend lacus vitae placerat ornare.",
    price: "90",
    capacity: "8",
    address:"103 avenue Foch",
    post_code:"59700",
    city:"Marcq-en-Baroeul",
    country: "France",
    photo_urls:[
                "http://www.book-a-flat.com/photo/paris/12040/thumbnail/salon.jpg"
                ]
  )
puts "***--- HOUSE #8 DONE ---***"
sleep 2
House.create!(
    name:"Curabitur faucibus arcu orci",
    description:"Vivamus ipsum massa, mollis id viverra tincidunt, rutrum sit amet magna. Suspendisse nibh risus, scelerisque id molestie vitae, tincidunt euismod lorem. Nam lacinia vestibulum velit nec congue. Aliquam scelerisque tortor eu odio iaculis viverra.",
    price: "90",
    capacity: "8",
    address:"19 rue Alsace Lorraine",
    post_code:"59420",
    city:"Mouvaux",
    country: "France",
    photo_urls:[
                "http://www.book-a-flat.com/photo/paris/12040/thumbnail/salon.jpg"
                ]
  )
puts "***--- HOUSE #9 DONE ---***"
sleep 2
House.create!(
    name:"Lorem ipsum dolor sit amet 1",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "100",
    capacity: "6",
    address:"16 rue Voltaire",
    post_code:"59290",
    city:"Wasquehal",
    country: "France",
    photo_urls:[
                "http://www.herworldplus.com/sites/default/files/20646-11997.jpg"
                ]
  )
puts "***--- HOUSE #10 DONE ---***"
sleep 2
House.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    price: "120",
    capacity: "8",
    address:"73 rue Eugène Jacquet",
    post_code:"59700",
    city:"Marcq-en-Baroeul",
    country: "France",
    photo_urls:[
                "http://www.herworldplus.com/sites/default/files/20646-11997.jpg"
                ]
  )
puts "***--- HOUSE #11 DONE ---***"
sleep 2
House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "90",
    capacity: "4",
    address:"23 allée des Mésanges",
    post_code:"59910",
    city:"Bondues",
    country: "France",
    photo_urls:[
                "http://www.herworldplus.com/sites/default/files/20646-11997.jpg"
                ]
  )
puts "***--- HOUSE #12 DONE ---***"
sleep 2
puts "***--- SEEDS DONE ---***"

House.all.each do |house|
  if house.latitude.nil?
    house.geocode
    house.save!
    puts "house " + house.id.to_s + " geocoded: lat: " + house.latitude.to_s + ", lng: " + house.longitude.to_s
    sleep 2
  end
end
