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
    name:"Stylish house close to river thames",
    description:"Double and single bedroom in lovely house are available in Baron's Court. Walking distance to river thames at Hammersmith with great traditional English pubs, theatre and restaurants. The Tube station is a short 7 minutes walk away, 16 minutes by tube to Piccadilly Circus (Westend/Soho) 8-10 minutes to Knightsbridge (Harrods) and Hyde Park.There are excellent transport links and direct tubes from Heathrow airport (Piccadilly line) Perfect for an extended holiday or for someone away on business needing a place to stay while away from home. My home is a Classic Victorian terrace house,situated in a quiet location.",
    price_cents: "80000",
    capacity: "6",
    address:"19 rue de Gand",
    post_code:"59000",
    city:"Lille",
    country: "France",
    planid: "ID1",
    photo_urls:[
                "https://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/1_uicwqs.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/2_b49amc.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/3_aq6mji.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/4_wzkdgb.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/5_p0y2dc.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/6_xokghz.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727250/7_kggwtp.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727249/8_ab7n7m.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727250/9_gszjn5.jpg",
                ]
  )
puts "***--- HOUSE #1 DONE ---***"
# sleep 2

# House.create!(
#     name:"Lorem ipsum dolor sit amet",
#     description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
#     price_cents: "850",
#     capacity: "8",
#     address:"73 rue Royale",
#     post_code:"59800",
#     city:"Lille",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/1_t2pzs4.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/2_bwx83c.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/3_doai3r.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/4_iiwf17.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/5_mreckm.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/6_uzmtgg.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/7_sdaqtb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/8_wffhnt.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/9_xhupuj.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727562/10_lta0pn.jpg"
#                 ]
#   )
# puts "***--- HOUSE #2 DONE ---***"
# sleep 2
# House.create!(
#     name:"consectetur adipiscing elit.",
#     description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
#     price_cents: "900",
#     capacity: "4",
#     address:"23 rue Nationale",
#     post_code:"59800",
#     city:"Lille",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/1_pffddn.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/2_dulylg.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/3_qbp6ka.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/4_y33lra.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/5_fwldyy.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727747/6_ibssku.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727747/7_rnepyg.jpg"
#                 ]
#   )
# puts "***--- HOUSE #3 DONE ---***"
# sleep 2
# House.create!(
#     name:"consectetur adipiscing elit.",
#     description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
#     price_cents: "770",
#     capacity: "3",
#     address:"23 rue de Metz",
#     post_code:"59800",
#     city:"Lille",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727967/1_pqzwsz.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/2_dzdedm.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/3_euk6ry.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727967/4_q5fh9x.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/5_eyqfny.jpg"
#                 ]
#   )
# puts "***--- HOUSE #4 DONE ---***"
# sleep 2
# House.create!(
#     name:"Lorem ipsum dolor sit amet.",
#     description:"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
#     price_cents: "825",
#     capacity: "4",
#     address:"23 Avenue de l'Hippodrome",
#     post_code:"59130",
#     city:"Lambersart",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/1_iutplb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/2_h0df62.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/3_b55gan.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/4_nbzu6l.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/5_yllsw1.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/6_chjc22.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/7_bbhrfx.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/8_t8amur.jpg"
#                 ]
#   )
# puts "***--- HOUSE #5 DONE ---***"
# sleep 2
# House.create!(
#     name:"Lorem ipsum dolor sit amet.",
#     description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere purus ac ex volutpat, ut lobortis ligula.",
#     price_cents: "725",
#     capacity: "8",
#     address:"23 rue Godefroy",
#     post_code:"59110",
#     city:"La Madeleine",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/1_g8xpxc.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/2_slt0ma.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/3_tnjs1r.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/4_pmezxb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/5_wnt2hu.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/6_o9vq8y.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/7_mk3cvs.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728791/8_w0hj9w.jpg"
#                 ]
#   )
# puts "***--- HOUSE #6 DONE ---***"
# sleep 2
# House.create!(
#     name:"vitae porttitor elit dui vitae felis.",
#     description:"Nunc ornare auctor nibh, ac pellentesque neque ultricies rhoncus. Cras vehicula, odio eget pharetra varius, metus turpis efficitur erat, quis sagittis eros massa et leo.",
#     price_cents: "775",
#     capacity: "8",
#     address:"74 Avenue du Maréchal Foch",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/1_gjjzx0.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/2_iwy4ug.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/3_tkwmld.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/4_pjimjv.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/5_epy0dl.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/6_nixkxn.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728568/7_dqkkbh.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728567/8_bvaduy.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728568/9_dleqqz.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728568/10_dokkbi.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728568/11_ofgb4i.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728568/12_oflvmr.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728569/13_hemfc5.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728569/14_bxnarq.jpg"
#                 ]
#   )
# puts "***--- HOUSE #7 DONE ---***"
# sleep 2
# House.create!(
#     name:"Maecenas porttitor lorem et accumsan vulputate",
#     description:"Nulla molestie aliquet turpis, in ultrices sem egestas consequat. Morbi feugiat fermentum neque, sed rhoncus magna faucibus eget. Nulla eleifend lacus vitae placerat ornare.",
#     price_cents: "900",
#     capacity: "8",
#     address:"103 avenue Foch",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/2_m6gp0i.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/1_j4dlmg.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/3_qydtew.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/4_ffjlci.jpg"
#                 ]
#   )
# puts "***--- HOUSE #8 DONE ---***"
# sleep 2
# House.create!(
#     name:"Curabitur faucibus arcu orci",
#     description:"Vivamus ipsum massa, mollis id viverra tincidunt, rutrum sit amet magna. Suspendisse nibh risus, scelerisque id molestie vitae, tincidunt euismod lorem. Nam lacinia vestibulum velit nec congue. Aliquam scelerisque tortor eu odio iaculis viverra.",
#     price_cents: "690",
#     capacity: "8",
#     address:"19 rue Alsace Lorraine",
#     post_code:"59420",
#     city:"Mouvaux",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728995/1_usnf9d.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728994/2_kn3ane.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728994/3_zbmdaa.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728994/4_h6o3jd.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728994/5_vt3ihr.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728994/6_lkdsjd.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728995/7_s9uptb.jpg"
#                 ]
#   )
# puts "***--- HOUSE #9 DONE ---***"
# sleep 2
# House.create!(
#     name:"Lorem ipsum dolor sit amet 1",
#     description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#     price_cents: "780",
#     capacity: "6",
#     address:"16 rue Voltaire",
#     post_code:"59290",
#     city:"Wasquehal",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729401/1_hzz9vf.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729401/2_ny7sef.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/3_qwgfil.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/4_sdmnbr.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/5_crltbs.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/6_quvswi.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/7_xcf0ej.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/8_gze6ci.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/9_ig7834.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729402/10_lgmudl.jpg"
#                 ]
#   )
# puts "***--- HOUSE #10 DONE ---***"
# sleep 2
# House.create!(
#     name:"Lorem ipsum dolor sit amet",
#     description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
#     price_cents: "860",
#     capacity: "8",
#     address:"73 rue Eugène Jacquet",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/1_sa34qb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/2_j8gbsy.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/3_sk9wb1.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/4_mn6cl9.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/5_qvzilj.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/6_gffhrn.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/7_qyaove.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/8_bu8kcy.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729134/9_alkwii.jpg"
#                 ]
#   )
# puts "***--- HOUSE #11 DONE ---***"
# sleep 2
# House.create!(
#     name:"consectetur adipiscing elit.",
#     description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
#     price_cents: "790",
#     capacity: "4",
#     address:"23 allée des Mésanges",
#     post_code:"59910",
#     city:"Bondues",
#     country: "France",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/1_bxs2xl.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/2_xvsvpd.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/3_kudqsb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/4_qin0cp.jpg"
#                 ]
#   )
# puts "***--- HOUSE #12 DONE ---***"
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
