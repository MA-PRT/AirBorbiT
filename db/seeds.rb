require "open-uri"

puts "Destroying DB"

Rocket.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: "emusk@spacex.com", password: "azerty")
user2 = User.create!(email: "john@gmail.com", password: "azerty")
user3 = User.create!(email: "sergio@gmail.com", password: "azerty")

puts "Creating original rockets..."

rocket1 = Rocket.create!(
  name: "Falcon 9",
  content: "Le modèle Falcon 9, construit par SpaceX aux États-Unis, est une fusée réutilisable conçue pour transporter des satellites et des astronautes.",
  number_passengers: 7,
  price_per_day: 1.0,
  user_id: user1.id
)

rocket1.photos.attach(
  io: URI.parse("https://nss.org/wp-content/uploads/2019/01/falcon-heavy.jpg").open,
  filename: "image1.jpg",
  content_type: "image/jpeg"
)
rocket1.photos.attach(
  io: URI.parse("https://www.tomsguide.fr/content/uploads/sites/2/2023/06/SPACEX-FALCON-9-atterrissage.jpg").open,
  filename: "image2.jpg",
  content_type: "image/jpeg"
)
rocket1.photos.attach(
  io: URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZoxdGvOzz59vHRZezJw4UM5PZKVVveskQdg&s").open,
  filename: "image3.jpg",
  content_type: "image/jpeg"
)

rocket2 = Rocket.create!(
  name: "Ariane 5",
  content: "L'Ariane 5 est une fusée développée par l'Agence Spatiale Européenne (ESA) et construite principalement en France pour des lancements commerciaux.",
  number_passengers: 10,
  price_per_day: 1.4,
  user_id: user1.id
)

rocket2.photos.attach(
  io: URI.parse("https://www.cieletespace.fr/media/default/0001/18/EDRS-C_is_launchedImg-5d4a.jpeg").open,
  filename: "image4.jpg",
  content_type: "image/jpeg"
)
rocket2.photos.attach(
  io: URI.parse("https://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_in_line/2023/06/15/node_1340895/56299097/public/2023/06/15/B9734528888Z.1_20230615185216_000%2BGMAMVCDMS.1-0.jpg?itok=MJp3U2i91686899041").open,
  filename: "image5.jpg",
  content_type: "image/jpeg"
)
rocket2.photos.attach(
  io: URI.parse("https://www.3af.fr/media/event/2022223414_1648499151-artist-s-view-of-the-james-webb-space-telescope-on-an-ariane-5-launcher.jpeg").open,
  filename: "image6.jpg",
  content_type: "image/jpeg"
)

rocket3 = Rocket.create!(
  name: "Millennium Falcon",
  content: "Le Millennium Falcon est une fusée fictive construite sur Corellia dans l'univers de Star Wars, connue pour sa vitesse légendaire.",
  number_passengers: 6,
  price_per_day: 2.0,
  user_id: user1.id
)

rocket3.photos.attach(
  io: URI.parse("https://media.gqmagazine.fr/photos/5b991e0a5e8dfe0011248866/16:9/w_2560%2Cc_limit/combien_co__te_la_fabrication_d_un_faucon_millenium___2949.jpeg").open,
  filename: "image7.jpg",
  content_type: "image/jpeg"
)
rocket3.photos.attach(
  io: URI.parse("https://i.ebayimg.com/images/g/OlsAAOSwYOJjPWv7/s-l1600.webp").open,
  filename: "image8.webp",
  content_type: "image/webp"
)
rocket3.photos.attach(
  io: URI.parse("https://gallerymurciano.com/wp-content/uploads/2022/02/Faucon-millenium.jpg").open,
  filename: "image9.jpg",
  content_type: "image/jpeg"
)

rocket4 = Rocket.create!(
  name: "Saturn V",
  content: "La fusée Saturn V, conçue par la NASA aux États-Unis, a été utilisée pour les missions Apollo vers la Lune.",
  number_passengers: 3,
  price_per_day: 1.6,
  user_id: user2.id
)

rocket4.photos.attach(
  io: URI.parse("https://cdn.firespring.com/images/bb4ce6c2-1e54-4e39-bcfd-6208b84b3737.jpg").open,
  filename: "image10.jpg",
  content_type: "image/jpeg"
)
rocket4.photos.attach(
  io: URI.parse("https://gugli3d.com/wp-content/uploads/2020/12/SaturnV-770x390.jpg").open,
  filename: "image11.jpg",
  content_type: "image/jpeg"
)
rocket4.photos.attach(
  io: URI.parse("http://www.capcomespace.net/dossiers/espace_US/apollo/lanceurs/saturn5/saturn5%20dessin%20general.jpg").open,
  filename: "image12.jpg",
  content_type: "image/jpeg"
)

rocket5 = Rocket.create!(
  name: "International Space Station",
  content: "The International Space Station (ISS) is a modular space station in low Earth orbit. It serves as a collaborative platform for scientific research and exploration, hosting astronauts from around the world.",
  number_passengers: 10,
  price_per_day: 5.0,
  user_id: user1.id
)

rocket5.photos.attach(
  io: URI.parse("https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2010/06/iss2/18901111-1-eng-GB/ISS.jpg").open,
  filename: "image13.jpg",
  content_type: "image/jpeg"
)
rocket5.photos.attach(
  io: URI.parse("https://www.lfm.ch/wp-content/uploads/2024/06/liss-une-structure-de-430000-kg-est-habite-en-permanence-depuis-plus-de-20-ans-archives.jpg").open,
  filename: "image14.jpg",
  content_type: "image/jpeg"
)
rocket5.photos.attach(
  io: URI.parse("https://www.universetoday.com/wp-content/uploads/2022/05/FRww2wLWYAABcto.jpg").open,
  filename: "image15.jpg",
  content_type: "image/jpeg"
)


rocket6 = Rocket.create!(
  name: "Soyouz",
  content: "La fusée Soyouz, développée en Russie, est utilisée pour des missions spatiales habitées et pour l'envoi de cargaisons vers l'ISS.",
  number_passengers: 3,
  price_per_day: 1.2,
  user_id: user2.id
)

rocket6.photos.attach(
  io: URI.parse("https://c0.lestechnophiles.com/www.numerama.com/wp-content/uploads/2021/12/soyouz-1536x864.jpg?resize=1200,675&key=1e85a502").open,
  filename: "image16.jpg",
  content_type: "image/jpeg"
)
rocket6.photos.attach(
  io: URI.parse("https://destination-orbite.net/astronautique/compendium/images/full_hr/banner-soyuz.jpg").open,
  filename: "image17.jpg",
  content_type: "image/jpeg"
)
rocket6.photos.attach(
  io: URI.parse("https://cdn2.nextinpact.com/images/bd/news/medium-172246.jpeg").open,
  filename: "image18.jpeg",
  content_type: "image/jpeg"
)

puts "Seeding done for original rockets..."
puts "Creating additionnal rockets"

# Rocket 7: Blue Origin New Shepard
rocket7 = Rocket.create!(
  name: "Blue Origin New Shepard",
  content: "New Shepard est une fusée réutilisable de Blue Origin, conçue pour les vols suborbitaux avec passagers et expériences scientifiques.",
  number_passengers: 6,
  price_per_day: 1.3,
  user_id: user1.id
)

rocket7.photos.attach(
  io: URI.parse("https://d3ezn0y6hdgq62.cloudfront.net/assets/BlueOrigin_NewShepard_Launch.jpg").open,
  filename: "new_shepard_1.jpg",
  content_type: "image/jpeg"
)

# Rocket 8: Space Shuttle Atlantis
rocket8 = Rocket.create!(
  name: "Space Shuttle Atlantis",
  content: "La navette spatiale Atlantis, un des symboles du programme spatial américain, a réalisé 33 missions orbitales.",
  number_passengers: 7,
  price_per_day: 1.8,
  user_id: user1.id
)

rocket8.photos.attach(
  io: URI.parse("https://www.kennedyspacecenter.com/-/media/DNC/KSCVC/Blog-Images/attraction-spotlight-space-shuttle-atlantis-img-1.ashx?la=en&hash=F8F1E7D276CA75A1F5814DD04BB6936DF15A5DCC").open,
  filename: "atlantis_1.jpg",
  content_type: "image/jpeg"
)

# Rocket 9: Starship
rocket9 = Rocket.create!(
  name: "SpaceX Starship",
  content: "Starship est un vaisseau spatial de SpaceX conçu pour les missions vers la Lune, Mars et au-delà.",
  number_passengers: 100,
  price_per_day: 2.5,
  user_id: user2.id
)

rocket9.photos.attach(
  io: URI.parse("https://destination-orbite.net/astronautique/actualite/images/full_hr/starship-ift6.webp").open,
  filename: "starship_1.jpg",
  content_type: "image/jpeg"
)

# Rocket 10: Virgin Galactic Unity
rocket10 = Rocket.create!(
  name: "Virgin Galactic Unity",
  content: "VSS Unity, de Virgin Galactic, est une fusée suborbitale dédiée aux vols touristiques dans l'espace.",
  number_passengers: 6,
  price_per_day: 1.6,
  user_id: user2.id
)

rocket10.photos.attach(
  io: URI.parse("https://spaceexplored.com/wp-content/uploads/sites/10/2020/09/Virgin-Galactic-SpaceShipTwo.jpg?quality=82&strip=all").open,
  filename: "unity_1.jpg",
  content_type: "image/jpeg"
)

# Rocket 11: Dragonfly
rocket11 = Rocket.create!(
  name: "Dragonfly",
  content: "Un concept de SpaceX, destiné à tester les atterrissages précis sur des corps célestes comme Mars.",
  number_passengers: 1,
  price_per_day: 1.0,
  user_id: user1.id
)

rocket11.photos.attach(
  io: URI.parse("https://science.nasa.gov/wp-content/uploads/2024/04/dragonfly-inflight.jpg?w=4096&format=jpeg").open,
  filename: "dragonfly_1.jpg",
  content_type: "image/jpeg"
)

# Rocket 12: Axiom Space AX-1
rocket12 = Rocket.create!(
  name: "Axiom Space AX-1",
  content: "Une mission privée en orbite terrestre basse réalisée par Axiom Space, transportant des astronautes civils.",
  number_passengers: 4,
  price_per_day: 2.0,
  user_id: user2.id
)

rocket12.photos.attach(
  io: URI.parse("https://c02.purpledshub.com/uploads/sites/41/2022/01/Axiom-1-station-25ea63b.jpg?w=1029&webp=1").open,
  filename: "axiom_1.jpg",
  content_type: "image/jpeg"
)

puts "Seeding done for additional rockets..."
puts "...Seeding done"
