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

puts "***--- USER & PROFILE HOUSE MANAGER CREATION ---***"# USER & PROFILE CREATION

puts "***--- HOUSE MANAGER #1 CREATION ---***"
  user = User.create!(
    first_name: "Aurélien",
    last_name: "Dobbels",
    email: "aurelien@gmail.com",
    password: "123456",
    phone_number: "+352.661.14.24.31",
    birthday: "12/10/1982"
  )
  prof = Profile.create!(
    category: "HouseManager",
    address: "10 rue de Gand",
    post_code: 59800,
    city: "Lille",
    country: "France",
    remote_photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512130127/fpoonxdaz3et6ngzu82d.png",
    user_id: user.id,
  )

puts "***--- HOUSE MANAGER #2 CREATION ---***"
  user = User.create!(
    first_name: "Thomas",
    last_name: "Huncker",
    email: "thomas@gmail.com",
    password: "123456",
    phone_number: "+33.6.12.34.56.78",
    birthday: 10/01/1992
  )
  prof = Profile.create!(
    category: "HouseManager",
    address: "10 rue des postes",
    post_code: 59000,
    city: "Lille",
    country: "France",
    remote_photo_url: "",
    user_id: user.id,
  )

puts "***--- TENANT #1 CREATION ---***"
  user = User.create!(
    first_name: "Antoine",
    last_name: "Staumont",
    email: "antoine@gmail.com",
    password: "123456",
    phone_number: "+33.6.98.76.54.32",
    birthday: 20/02/1978
  )
  prof = Profile.create!(
    category: "",
    address: "10 rue de cambrai",
    post_code: 59000,
    city: "Lille",
    country: "France",
    remote_photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512142844/h1jmpwfacbmnb5bagah0.jpg",
    user_id: user.id,
  )

puts "***--- VISITOR #1 CREATION ---***"
  user = User.create!(
    first_name: "Maxime",
    last_name: "Godart-Haupet",
    email: "maxime@gmail.com",
    password: "123456",
    phone_number: "+33.6.54.73.08.12",
    birthday: 24/07/1995
  )
  prof = Profile.create!(
    category: "",
    address: "45 rue de Marquillies",
    post_code: 59000,
    city: "Lille",
    country: "France",
    remote_photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512134866/grywolnslhab6bkayc3n.jpg",
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
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/11/ROYAL_ROULOTTE_PARIS_16_DECORATION_RENOVATION_APPARTEMENT_08.jpg",
  )

House.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    price: "850",
    capacity: "8",
    address:"73 rue Royale",
    post_code:"59800",
    city:"Lille",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg",
  )

House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "90",
    capacity: "4",
    address:"23 rue Nationale",
    post_code:"59000",
    city:"Lille",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2015/11/ROYAL_ROULOTTE_MONTREUIL_CUISINE_06.jpg",
  )

House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "110",
    capacity: "3",
    address:"23 rue de Metz",
    post_code:"59800",
    city:"Lille",
    country: "France",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_455ec9f18e2944339b2acb6145f6db9c~mv2_d_4096_2725_s_4_2.jpg/v1/fill/w_2083,h_1386,al_c,q_90,usm_0.66_1.00_0.01/8aa29f_455ec9f18e2944339b2acb6145f6db9c~mv2_d_4096_2725_s_4_2.webp",
  )

House.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
    price: "90",
    capacity: "4",
    address:"23 Avenue de l'Hyppodrome",
    post_code:"59130",
    city:"Lambersart",
    country: "France",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_ffcbbdc54bcb4e31a62fb67b840bc094~mv2_d_3264_2448_s_4_2.jpg/v1/fill/w_1848,h_1386,al_c,q_90,usm_0.66_1.00_0.01/8aa29f_ffcbbdc54bcb4e31a62fb67b840bc094~mv2_d_3264_2448_s_4_2.webp",
  )

House.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere purus ac ex volutpat, ut lobortis ligula.",
    price: "90",
    capacity: "8",
    address:"23 rue Godefroy",
    post_code:"591100",
    city:"La Madeleine",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/01/ROYAL_ROULOTTE_RENOVATION_DECORATION_MAISON_HOME_DECOR_FRANCE_PARIS_RAMBOUILLET_47.jpg",
  )


House.create!(
    name:"vitae porttitor elit dui vitae felis.",
    description:"Nunc ornare auctor nibh, ac pellentesque neque ultricies rhoncus. Cras vehicula, odio eget pharetra varius, metus turpis efficitur erat, quis sagittis eros massa et leo.",
    price: "120",
    capacity: "8",
    address:"74 Avenue du Maréchal Foch",
    post_code:"59700",
    city:"Marcq-en-Baroeul
",
    country: "France",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_8ea8a57efadd4c85845833fb0a9ebe27~mv2.jpg/v1/fill/w_640,h_637,al_c,q_90/8aa29f_8ea8a57efadd4c85845833fb0a9ebe27~mv2.webp",
  )

House.create!(
    name:"Maecenas porttitor lorem et accumsan vulputate",
    description:"Nulla molestie aliquet turpis, in ultrices sem egestas consequat. Morbi feugiat fermentum neque, sed rhoncus magna faucibus eget. Nulla eleifend lacus vitae placerat ornare.",
    price: "90",
    capacity: "8",
    address:"103 avenue Foch",
    post_code:"59700",
    city:"Marcq-en-Baroeul",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_05.jpg",
  )

House.create!(
    name:"Curabitur faucibus arcu orci",
    description:"Vivamus ipsum massa, mollis id viverra tincidunt, rutrum sit amet magna. Suspendisse nibh risus, scelerisque id molestie vitae, tincidunt euismod lorem. Nam lacinia vestibulum velit nec congue. Aliquam scelerisque tortor eu odio iaculis viverra.",
    price: "90",
    capacity: "8",
    address:"19 rue Alsace Lorraine",
    post_code:"59420",
    city:"Mouvaux",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/06/ROYAL_ROULOTTE_RENOVATION_DECORATION_RUE_DIEU_CANAL_SAINT_MARTIN_PARIS_10_12.jpg",
  )

House.create!(
    name:"Lorem ipsum dolor sit amet 1",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "100",
    capacity: "6",
    address:"16 rue Voltaire",
    post_code:"59290",
    city:"Wasquehal",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/11/ROYAL_ROULOTTE_PARIS_16_DECORATION_RENOVATION_APPARTEMENT_08.jpg",
  )

House.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    price: "120",
    capacity: "8",
    address:"73 rue Eugène Jacquet",
    post_code:"59700",
    city:"Marcq-en-Baroeul",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg",
  )

House.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    price: "90",
    capacity: "4",
    address:"23 allée des Mésanges",
    post_code:"59910",
    city:"Bondues",
    country: "France",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2015/11/ROYAL_ROULOTTE_MONTREUIL_CUISINE_06.jpg",
  )
