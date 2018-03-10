# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "***--- DELETING STRIPE PLANS ---***"
if Stripe::Plan.list.first.nil?
else
  all_stripe_plans = Stripe::Plan.list
  all_stripe_plans.each do |plan|
   plan_id = plan.id
  plan = Stripe::Plan.retrieve(plan_id)
  plan.delete
  end
end

puts "***--- STRIPE PLANS DELETED ---***"

puts "***--- SEEDING PROCESS ---***"

HouseOption.destroy_all
Feature.destroy_all
Review.destroy_all
Booking.destroy_all
House.destroy_all
Profile.destroy_all
Order.destroy_all
User.destroy_all

feature_key = Feature.create!(name: "key")
feature_wifi = Feature.create!(name: "wifi")
feature_stripe = Feature.create!(name: "cc-stripe")
feature_slack = Feature.create!(name: "slack")
feature_tv = Feature.create!(name: "television")
feature_pets = Feature.create!(name: "paw")
feature_douche = Feature.create!(name: "shower")
feature_bath = Feature.create!(name: "bath")
feature_handshake = Feature.create!(name: "handshake-o")
feature_bicycle = Feature.create!(name: "bicycle")
feature_coffee = Feature.create!(name: "coffee")
feature_cutlery = Feature.create!(name: "cutlery")
feature_gamepad = Feature.create!(name: "gamepad")

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
    address: "22 avenue du général de gaulle",
    post_code: 57100,
    city: "Thionville",
    country: "France",
    photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512130127/fpoonxdaz3et6ngzu82d.png",
    user_id: user.id,
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  )

puts "***--- HOUSE CREATION ---***"# USER & PROFILE CREATION

h = House.create!(
    name:"Magnifique maison de maitre de 1908",
    description:"Bien plus qu'un simple logement, nous te proposons une nouvelle façon de vivre.     Que tu souhaites te relaxer avec tes colocataires après le boulot, inviter des amis à partager une bonne bouteille de vin ou simplement rester tranquille dans ta chambre, nous te proposons de découvrir le concept de Coliving.     Au travers des évènements organisés au sein de la maison, tu partageras des moments uniques avec d'autres personnes curieuses de partager leurs expériences et souhaitant découvrir de nouvelles cultures.     Nous t'offrons à fois la flexibilité d'une location courte durée et la possibilité de te faire de nouveaux amis, le tout dans une maison où chaque espace a été pensé avec minutie ; l'ambiance cosy qui s'y dégage te fera te sentir instantanément à la maison.     Nous proposons 20 belles chambres privées avec des espaces communs incroyables, le tout dans une maison de maitre construite en 1908.     La maison en elle-même se compose au rez-de-chaussée d'un hall d'entrée donnant accès à la cave située au sous-sol, d'une cuisine équipée ouverte sur une spacieuse salle à manger, d'un double séjour donnant accès au jardin, et d'un WC séparé.     Au 1er étage, tu découvriras 5 grandes suites chacune accompagnée d'une salle de douche et d'un WC.     Les 2e, 3e, 4e étages proposent la même disposition.     La cave a quant à elle était divisée en 2 avec d'une part en salle de sport et d'autre part en salle jeux / cinéma.     Cette belle bâtisse offre une situation idéale puisqu'elle est située à 700 mètres de la gare de Thionville et offre à proximité toutes les commodités nécessaires à la vie de tous les jours.      Ce qui est inclus dans ton loyer : Les charges classiques : eau, électricité, chauffage, taxe d'habitation.     Les plus sympas : une salle de fitness pour éliminer les excès de la veille, une salle de cinéma avec Netflix pour les dimanches après-midi, une borne d'arcade pour lancer des défis sur Street Fighter, une serrure connectée pour ne jamais oublier tes clés, et bien sur le wifi haut débit et le ménage bi-mensuel.     Sans oublier et surtout : partager des moments incroyables !     La seule condition : 3 mois minimum renouvelable chaque mois.",
    price_cents: "50000",
    capacity: "20",
    address:"22 avenue du général de gaulle",
    post_code:"57100",
    city:"Thionville",
    country: "France",
    planid: "id1",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
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
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_coffee, house: h)
HouseOption.create!(feature: feature_gamepad, house: h)
HouseOption.create!(feature: feature_bicycle, house: h)
puts "***--- HOUSE #1 DONE ---***"
sleep 2


h = House.create!(
    name:"Hyde Park Designer Artist Studio",
    description:"arrive in under 30mins from Heathrow - 20mins heathrow express 4mins taxi or 8mins walk - 2 blocks away from Paddington station Indulge yourself in this spectacular former studio of full of carefully curated pieces- Ideal for business travel as its secure with furniture and finishes to rival hotel suites at the Ritz or Lansborough Hotels. We can arrange concierge service. we are super excited to star in Plum Guide award for top 254 properties (2017) out if 25 hosting sites 40,000 properties",
    price_cents: "85000",
    capacity: "8",
    address:"73 rue Royale",
    post_code:"59800",
    city:"Lille",
    country: "France",
    planid: "id2",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
    photo_urls:[
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/1_t2pzs4.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/2_bwx83c.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/3_doai3r.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/4_iiwf17.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/5_mreckm.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727560/6_uzmtgg.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/7_sdaqtb.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/8_wffhnt.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727561/9_xhupuj.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727562/10_lta0pn.jpg"
                ]
  )
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_stripe, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_bicycle, house: h)
HouseOption.create!(feature: feature_bath, house: h)
puts "***--- HOUSE #2 DONE ---***"
sleep 2

h = House.create!(
    name:"Light & Spacious Garden Flat London.",
    description:"A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory. Close to Queens park station and all buses. Shops are very nearby as well as nice local restaurants.",
    price_cents: "90000",
    capacity: "4",
    address:"23 rue Nationale",
    post_code:"59800",
    city:"Lille",
    country: "France",
    planid: "id3",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
    photo_urls:[
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/1_pffddn.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/2_dulylg.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/3_qbp6ka.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/4_y33lra.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727746/5_fwldyy.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727747/6_ibssku.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727747/7_rnepyg.jpg"
                ]
  )
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_stripe, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_douche, house: h)
HouseOption.create!(feature: feature_pets, house: h)
puts "***--- HOUSE #3 DONE ---***"
sleep 2

h = House.create!(
     name:"The Muse Haus I - Black Sheep.",
    description:"The Muse Haus is pioneering a new and unique concept of hospitality: it merges accessibility and hotel standard quality with homelike comfort and the privacy of serviced apartments, mobilised and driven by modern internet and smart phone technology. The Muse Haus endeavours to make guests feel at home the moment they enter the house, with the ability to store belongings and food, use of a common kitchen and living space. Mingle with Muse Haus mates or hang out on your own, work, rest or play.",
    price_cents: "77000",
    capacity: "3",
    address:"23 rue de Metz",
    post_code:"59800",
    city:"Lille",
    country: "France",
    planid: "id4",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
    photo_urls:[
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727967/1_pqzwsz.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/2_dzdedm.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/3_euk6ry.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727967/4_q5fh9x.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512727966/5_eyqfny.jpg"
                ]
  )
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_stripe, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_cutlery, house: h)
HouseOption.create!(feature: feature_pets, house: h)
puts "***--- HOUSE #4 DONE ---***"
sleep 2

h = House.create!(
    name:"Designer Artist Studio.",
    description:"arrive in under 30mins from Heathrow - 20mins heathrow express 4mins taxi or 8mins walk - 2 blocks away from Paddington station. Indulge yourself in this spectacular former studio of full of carefully curated pieces- Ideal for business travel as its secure with furniture and finishes to rival hotel suites at the Ritz or Lansborough Hotels. We can arrange concierge service. We are super excited to star in Plum Guide award for top 254 properties (2017) out if 25 hosting sites 40,000 properties",
    price_cents: "82500",
    capacity: "4",
    address:"23 Avenue de l'Hippodrome",
    post_code:"59130",
    city:"Lambersart",
    country: "France",
    planid: "id5",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
    photo_urls:[
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/1_iutplb.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/2_h0df62.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/3_b55gan.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/4_nbzu6l.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728059/5_yllsw1.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/6_chjc22.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/7_bbhrfx.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728060/8_t8amur.jpg"
                ]
  )
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_stripe, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_handshake, house: h)
HouseOption.create!(feature: feature_bicycle, house: h)
puts "***--- HOUSE #5 DONE ---***"
sleep 2

h = House.create!(
    name:"Cute & Cosy 1 bed flat in Vauban.",
    description:"A pretty and bright one bed flat with great balcony and fantastic views across South London. It is a located a short walk from Kennington tube with excellent transport links into the centre.",
    price_cents: "72500",
    capacity: "8",
    address:"23 rue Godefroy",
    post_code:"59110",
    city:"La Madeleine",
    country: "France",
    planid: "id6",
    idlock: "216634041",
    idbridge: "hP1S5i",
    ipaddress: "http://10.10.105.21:8080",
    photo_urls:[
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/1_g8xpxc.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/2_slt0ma.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/3_tnjs1r.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/4_pmezxb.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/5_wnt2hu.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/6_o9vq8y.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728790/7_mk3cvs.jpg",
                "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728791/8_w0hj9w.jpg"
                ]
  )
HouseOption.create!(feature: feature_tv, house: h)
HouseOption.create!(feature: feature_key, house: h)
HouseOption.create!(feature: feature_wifi, house: h)
HouseOption.create!(feature: feature_stripe, house: h)
HouseOption.create!(feature: feature_slack, house: h)
HouseOption.create!(feature: feature_pets, house: h)
HouseOption.create!(feature: feature_gamepad, house: h)
puts "***--- HOUSE #6 DONE ---***"
sleep 2

# h = House.create!(
#     name:"Gorgeous Glass Box Penthouse (w/Huge room & wine)!.",
#     description:"Please only women and couples, thank you for your understanding. Kick back, relax, indulge in free wine as you sit and enjoy the stunning London skyline. An exceptional, elegant, architect-designed flat the Glass Box penthouse is extended by a private roof terrace with a floral bistro setting. 5 mins to the nearest tube station, the Glass Box is based near the center of London equipped with all the essentials. Your large private room is awaiting...all you need to do is bring you & a suitcase!",
#     price_cents: "77500",
#     capacity: "8",
#     address:"74 Avenue du Maréchal Foch",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     planid: "id7",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
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
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_bath, house: h)
# HouseOption.create!(feature: feature_cutlery, house: h)
# puts "***--- HOUSE #7 DONE ---***"
# sleep 2

# h = House.create!(
#     name:"Flat Fantastic Location Near Nationale Street",
#     description:"Luxury modern one king bedroom top floor flat, openzen like living room & fully equipped kitchen in the heart of central london. High end furnishing and pieces. Less than 2 minutes walk from Goodge street station (links to Oxford circus & Leicester square). The apartment is in a quiet location within the Fitzrovia district of W1 , only 50 metres from popular Charlotte Street and a short walk from leafy Soho Square. Near London's best bars, restaurants, cafes, West end for shopping!",
#     price_cents: "90000",
#     capacity: "8",
#     address:"103 avenue Foch",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     planid: "id8",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/2_m6gp0i.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/1_j4dlmg.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/3_qydtew.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512728926/4_ffjlci.jpg"
#                 ]
#   )
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_handshake, house: h)
# HouseOption.create!(feature: feature_gamepad, house: h)
# puts "***--- HOUSE #8 DONE ---***"
# sleep 2

# h = House.create!(
#     name:"Large 2 Bedroom Central Wimbledon Flat",
#     description:"Our vast modern 2 bedroom flat in quiet location in Central Wimbledon is 2-3 minutes walk from Wimbledon Station with frequent trains to Central London taking less than 20 mins and running late into the night. Local shops, restaurants and bars including San Lorenzo and Sushi and Sticks are even closer. Other local facilities include Wimbledon and Polka Childrens Theatres, Wimbledon library, two gyms and a cinema. Walking distance to Wimbledon Village, Common and of course WIMBLEDON TENNIS.",
#     price_cents: "69000",
#     capacity: "8",
#     address:"19 rue Alsace Lorraine",
#     post_code:"59420",
#     city:"Mouvaux",
#     country: "France",
#     planid: "id9",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
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
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_douche, house: h)
# HouseOption.create!(feature: feature_bicycle, house: h)
# puts "***--- HOUSE #9 DONE ---***"
# sleep 2

# h = House.create!(
#     name:"Beautiful flat in heart of Hackney",
#     description:"Welcome to Hackney! One of the most vibrant and creative parts of London. Your own appartement in the heart of Dalston. A beautiful bright space in a Victorian period building.  We created great room volume through making the traditional London butterfly roof visible. Not far from Central London, connected through 3 near by Overground stations and multiple bus stops.Broadway Market, two parks and Regents Canal are easy to reach by foot. A perfect starting point to explore London.",
#     price_cents: "78000",
#     capacity: "6",
#     address:"16 rue Voltaire",
#     post_code:"59290",
#     city:"Wasquehal",
#     country: "France",
#     planid: "id10",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
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
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_pets, house: h)
# HouseOption.create!(feature: feature_cutlery, house: h)
# puts "***--- HOUSE #10 DONE ---***"
# sleep 2

# h = House.create!(
#     name:"Stunning NY loft style S/C studio",
#     description:"Peaceful, light, bright, self catering studio in converted attic of large house. 35 sqm private space and 3m high ceiling. Ensuite shower. Same day service wash and dry cleaning less than 100 yards. Sheets and towel change once a week for longer lets. Cleaner charge £10.00 added to each booking. Fast broadband access/ Wi-fi. Close to Jubilee line and overground Brondesbury at Cricklewood, West Hampstead , easy access to numerous major train stations, airports, centre of town. Residents parking only or pay and display. The neighbourhood is mainly family based , residential, leafy, Victorian /Edwardian red brick houses with large gardens. Friendly and safe. Many Persian restaurants, Eastern European delicatessens and famous bagel bakery , near the Jewish quarter of London. Very multi cultural. Not far from Brent Cross shopping centre or Ikea at Wembley. Easy access to Oxford Street/ Covent Garden and the centre for shopping , also easy access to Portobello and Notting Hill. I have hosted ( short term lets in my previous property ) for about 5 years and have always had fantastic feedback and fabulous lodgers.  Huge success with Airbnb.",
#     price_cents: "86000",
#     capacity: "8",
#     address:"73 rue Eugène Jacquet",
#     post_code:"59700",
#     city:"Marcq-en-Baroeul",
#     country: "France",
#     planid: "id11",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
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
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_bath, house: h)
# HouseOption.create!(feature: feature_gamepad, house: h)
# puts "***--- HOUSE #11 DONE ---***"
# sleep 2

# h = House.create!(
#     name:"Central Scandi Boutique Style Studio - Hyde Park.",
#     description:"Fancy some local life in London? Then our Scandi style studio is the right pick for you. Centrally located, next to Hyde Park & Kensington Gardens, close to Notting Hill & Portobello Road, Oxford Street & Marylebone. You get a fantastic and safe location, a cool & trendy neighbourhood, great restaurants, shops, markets & leisure facilities. Convenient for arrival and departure from/to all airports! Underground: Queensway (Central), Bayswater (Victoria & Circle Line) Several bus stops",
#     price_cents: "79000",
#     capacity: "4",
#     address:"23 allée des Mésanges",
#     post_code:"59910",
#     city:"Bondues",
#     country: "France",
#     planid: "id12",
#     idlock: "216634041",
#     idbridge: "hP1S5i",
#     ipaddress: "http://10.10.105.21:8080",
#     photo_urls:[
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/1_bxs2xl.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/2_xvsvpd.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/3_kudqsb.jpg",
#                 "http://res.cloudinary.com/dwkqph9as/image/upload/v1512729293/4_qin0cp.jpg"
#                 ]
#   )
# HouseOption.create!(feature: feature_tv, house: h)
# HouseOption.create!(feature: feature_key, house: h)
# HouseOption.create!(feature: feature_wifi, house: h)
# HouseOption.create!(feature: feature_stripe, house: h)
# HouseOption.create!(feature: feature_slack, house: h)
# HouseOption.create!(feature: feature_handshake, house: h)
# HouseOption.create!(feature: feature_douche, house: h)
# puts "***--- HOUSE #12 DONE ---***"
# sleep 2

puts "***--- SEEDS DONE ---***"

House.all.each do |house|
  if house.latitude.nil? || house.longitude.nil?
    house.geocode
    house.save!
    puts "house " + house.id.to_s + " geocoded: lat: " + house.latitude.to_s + ", lng: " + house.longitude.to_s
    sleep 2
  end
end
