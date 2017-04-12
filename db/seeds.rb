puts "Deleting users and studios...."
Studio.destroy_all
User.destroy_all
puts "looking for users studios..."

doug = User.create!(
  password: "123456",
  email: "douglas@lewagon.com",
  first_name: "Douglas",
  last_name: "Berkley" )

ainaa = User.create!(
  password: "123456",
  email: "ainaa@lewagon.com",
  first_name: "Ainaa",
  last_name: "Sakinah" )

ryo = User.create!(
  password: "123456",
  email: "ryosuke@lewagon.com",
  first_name: "Ryosuke",
  last_name: "Uchida" )

Studio.create!(
  name: "Abbey Road Studios",
  location: "Shinjuku, Tokyo, Japan",
  price: 50000,
  description: "Aside from most of the Beatles albums, Abbey Road (formerly EMI Studios) is also the recording site of Pink Floyd’s The Dark Side of the Moon (1973) Duran Duran’s eponymous debut album (1981) parts of Radiohead’s The Bends (1995) and OK Computer (1997) and Lady Gaga’s Born This Way (2011).",
  capacity: 10,
  photo: File.new(Rails.root.join("db/fixtures/studio1.jpg")),
  user: doug)

Studio.create!(
  name: "The Dungeon",
  location: "Shibuya, Tokyo, Japan",
  price: 10000,
  description: "The Dungeon itself was a studio in producer Rico Wade’s mother’s basement in Atlanta, Georgia, but the collective has included some of the greatest hip-hop acts of the South and, consequently, of all time.",
  capacity: 5,
  photo: File.new(Rails.root.join("db/fixtures/studio2.jpg")),
  user: ainaa)

Studio.create!(
  name: "Muscle Shoals Sound Studio",
  location: "Ikebukuro, Tokyo, Japan",
  price: 20000,
  description: "Muscle Shoals was formed when a band, the Muscle Shoals Sound Rhythm Section (nicknamed the Swampers) broke away from the great FAME Studios nearby and formed their own.",
  capacity: 6,
  photo: File.new(Rails.root.join("db/fixtures/studio3.jpg")),
  user: ryo)

Studio.create!(
  name: "Trident Studios",
  location: "Roppongi Hills, Tokyo, Japan",
  price: 30000,
  description: "It’s hard to understate how important London studios were to rock ‘n’ roll in the ’60s and ’70s, and high among those studios was Trident. Tucked back in an alley in London’s posh Soho neighborhood, Trident is barely noticeable from the street, and it takes a little bit of searching to even realize it’s a studio.",
  capacity: 4,
  photo: File.new(Rails.root.join("db/fixtures/studio4.jpg")),
  user: doug)

Studio.create!(
  name: "Sunset Sound Recorders",
  location: "Daikanyama, Tokyo, Japan",
  price: 40000,
  description: "Probably the most famous album recorded here was the Rolling Stones’ Exile on Main Street (1972, and pictured above) generally believed to be their best ever, but it was also the home of the Beach Boys’ best album, Pet Sounds (1966). ",
  capacity: 7,
  photo: File.new(Rails.root.join("db/fixtures/studio5.jpg")),
  user: ainaa)

Studio.create!(
  name: "Headley Grange",
  location: "Shinagawa, Tokyo, Japan",
  price: 15000,
  description: "During a recording session in the room next door, Jimmy Page was trying out the riff to “When the Levee Breaks,” when the crew started setting up John Bonham’s drum kit in the hall. He went out, start playing, and they recorded it from the stairwell.",
  capacity: 5,
  photo: File.new(Rails.root.join("db/fixtures/studio6.jpg")),
  user: ryo)

Studio.create!(
  name: "Motown",
  location: "Nippori, Tokyo, Japan",
  price: 35000,
  description: "It was without a doubt one of the most important recording studios of all time, and if you say the name “Motown” now, it evokes an entire genre of music put out by Berry Gordy’s Motown label.",
  capacity: 7,
  photo: File.new(Rails.root.join("db/fixtures/studio7.jpg")),
  user: doug)

Studio.create!(
  name: "Electric Lady Studios",
  location: "Aoyama, Tokyo, Japan",
  price: 45000,
  description: "Electric Lady Studios (as you’ve probably guessed) was founded by Jimi Hendrix after how much it cost him to record his epic album Electric Ladyland.",
  capacity: 5,
  photo: File.new(Rails.root.join("db/fixtures/studio18.jpg")),
  user: doug)

Studio.create!(
  name: "Sun Studio",
  location: "Harajuku, Tokyo, Japan",
  price: 25000,
  description: "Aside from the founders of rock, Sun Studio also recorded albums for blues greats B.B. King, Howlin’ Wolf, and Junior Parker. It closed for a while but then reopened in 1987, where, probably most notably, it recorded U2’s Rattle and Hum (1988).",
  capacity: 6,
  photo: File.new(Rails.root.join("db/fixtures/studio8.jpg")),
  user: ainaa)

Studio.create!(
  name: "Studio One",
  location: "Akihabara, Tokyo, Japan",
  price: 13000,
  description: "It’s called “the Motown of Jamaica,” but really, it should just be called Studio One. Because Studio One is the home of reggae, and it doesn’t need the Motown qualifier.",
  capacity: 4,
  photo: File.new(Rails.root.join("db/fixtures/studio9.jpg")),
  user: ainaa)

Studio.create!(
  name: "Rolling Stones Mobile Studio",
  location: "Ueno, Tokyo, Japan",
  price: 5000,
  description: "This one could get on here just for the novelty of having what’s basically a truck with a recording studio in it, but it’s actually been the site of a number of insanely good recordings. It was set up by Mick Jagger when he got sick of all the problems of using regular recording studios.",
  capacity: 3,
  photo: File.new(Rails.root.join("db/fixtures/studio10.jpg")),
  user: ryo)

Studio.create!(
  name: "Capitol Studios",
  location: "Tsukiji, Tokyo, Japan",
  price: 47000,
  description: "The studios are most famous for being the place where Frank Sinatra did a lot of his recordings — his microphone is still here, and the band Bastille recently recorded on it — as well as being a home to Nat King Cole and the Beach Boys.",
  capacity: 10,
  photo: File.new(Rails.root.join("db/fixtures/studio11.jpg")),
  user: ryo)

Studio.create!(
  name: "Lee “Scratch” Perry’s Black Ark",
  location: "Ginza, Tokyo, Japan",
  price: 22000,
  description: "While not quite as mainstream, and definitely more low-tech than nearby Studio One, the Black Ark was known for Perry’s innovative producing techniques, and also for his incredibly strange behavior.",
  capacity: 5,
  photo: File.new(Rails.root.join("db/fixtures/studio12.jpg")),
  user: doug)

Studio.create!(
  name: "Hans Zimmer’s Music Lair",
  location: "Asakusa, Tokyo, Japan",
  price: 33000,
  description: "You may not have heard of Hans Zimmer, but you’ve definitely listened to him. Zimmer is the German composer known for writing the scores to movies like Gladiator, The Dark Knight, Inception, and The Lion King.",
  capacity: 6,
  photo: File.new(Rails.root.join("db/fixtures/studio13.jpg")),
  user: ainaa)

Studio.create!(
  name: "Chase Park Transduction",
  location: "Yoyogi, Tokyo, Japan",
  price: 28000,
  description: "It’s recorded the granddaddy of Athens rock bands, REM, as well as acts like Bright Eyes, Deerhunter, Animal Collective, and Queens of the Stone Age.",
  capacity: 8,
  photo: File.new(Rails.root.join("db/fixtures/studio14.jpg")),
  user: ryo)

Studio.create!(
  name: "Rockfield Recording Studio",
  location: "Marunochi, Tokyo, Japan",
  price: 38000,
  description: "Built out of a ramshackle set of old farm buildings and solid stone studios, it has a unique sound that was well described in the name - rock field, indeed. A glance down their catalogue reads like a who’s who.",
  capacity: 4,
  photo: File.new(Rails.root.join("db/fixtures/studio15.jpg")),
  user: ainaa)

Studio.create!(
  name: "Impact Hub",
  location: "Meguro, Tokyo, Japan",
  price: 4000,
  description: "Not known in the local scene but a hot up-and-coming space for musicians to make good music. The acoustics are spot-on and the coffee isn't bad either.",
  capacity: 9,
  photo: File.new(Rails.root.join("db/fixtures/studio16.jpg")),
  user: doug)

Studio.create!(
  name: "Gold Star Recording Studios",
  location: "Ebisu, Tokyo, Japan",
  price: 42000,
  description: "It was the recording ‘home’ of ABC-TV’s prime-time Rock & Roll Show Shindig and became the perfect and natural creative home for so many major artists.",
  capacity: 6,
  photo: File.new(Rails.root.join("db/fixtures/studio17.jpg")),
  user: ryo)

puts "...users and studios seeded."
