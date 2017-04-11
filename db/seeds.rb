puts "Deleting users and studios...."
User.destroy_all
Studio.destry_all
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
  name: "Abbey Road Studios")
  location: "Shinjuku, Tokyo, Japan",
  price: 50000,
  desciption: "Aside from most of the Beatles albums, Abbey Road (formerly EMI Studios) is also the recording site of Pink Floyd’s The Dark Side of the Moon (1973) Duran Duran’s eponymous debut album (1981) parts of Radiohead’s The Bends (1995) and OK Computer (1997) and Lady Gaga’s Born This Way (2011).",
  capacity: 10,
  user: doug)

Studio.create!(
  name: "The Dungeon")
  location: "Shibuya, Tokyo, Japan",
  price: 10000,
  desciption: "The Dungeon itself was a studio in producer Rico Wade’s mother’s basement in Atlanta, Georgia, but the collective has included some of the greatest hip-hop acts of the South and, consequently, of all time.",
  capacity: 5,
  user: ainaa)

Studio.create!(
  name: "Muscle Shoals Sound Studio")
  location: "Ikebukuro, Tokyo, Japan",
  price: 20000,
  desciption: "Muscle Shoals was formed when a band, the Muscle Shoals Sound Rhythm Section (nicknamed the Swampers) broke away from the great FAME Studios nearby and formed their own.",
  capacity: 6,
  user: ryo)

Studio.create!(
  name: "Trident Studios")
  location: "Roppongi Hills, Tokyo, Japan",
  price: 30000,
  desciption: "It’s hard to understate how important London studios were to rock ‘n’ roll in the ’60s and ’70s, and high among those studios was Trident. Tucked back in an alley in London’s posh Soho neighborhood, Trident is barely noticeable from the street, and it takes a little bit of searching to even realize it’s a studio.",
  capacity: 4,
  user: doug)

Studio.create!(
  name: "Sunset Sound Recorders")
  location: "Daikanyama, Tokyo, Japan",
  price: 40000,
  desciption: "Probably the most famous album recorded here was the Rolling Stones’ Exile on Main Street (1972, and pictured above) generally believed to be their best ever, but it was also the home of the Beach Boys’ best album, Pet Sounds (1966). ",
  capacity: 7,
  user: ainaa)

Studio.create!(
  name: "Headley Grange")
  location: "Shinagawa, Tokyo, Japan",
  price: 15000,
  desciption: "During a recording session in the room next door, Jimmy Page was trying out the riff to “When the Levee Breaks,” when the crew started setting up John Bonham’s drum kit in the hall. He went out, start playing, and they recorded it from the stairwell.",
  capacity: 5,
  user: ryo)

Studio.create!(
  name: "Motown")
  location: "Nippori, Tokyo, Japan",
  price: 35000,
  desciption: "It was without a doubt one of the most important recording studios of all time, and if you say the name “Motown” now, it evokes an entire genre of music put out by Berry Gordy’s Motown label.",
  capacity: 7,
  user: doug)

Studio.create!(
  name: "Electric Lady Studios")
  location: "Aoyama, Tokyo, Japan",
  price: 45000,
  desciption: "Electric Lady Studios (as you’ve probably guessed) was founded by Jimi Hendrix after how much it cost him to record his epic album Electric Ladyland.",
  capacity: 5,
  user: doug)

Studio.create!(
  name: "Sun Studio")
  location: "Harajuku, Tokyo, Japan",
  price: 25000,
  desciption: "Aside from the founders of rock, Sun Studio also recorded albums for blues greats B.B. King, Howlin’ Wolf, and Junior Parker. It closed for a while but then reopened in 1987, where, probably most notably, it recorded U2’s Rattle and Hum (1988).",
  capacity: 6,
  user: ainaa)

Studio.create!(
  name: "Studio One")
  location: "Akihabara, Tokyo, Japan",
  price: 13000,
  desciption: "It’s called “the Motown of Jamaica,” but really, it should just be called Studio One. Because Studio One is the home of reggae, and it doesn’t need the Motown qualifier.",
  capacity: 4,
  user: ainaa)

Studio.create!(
  name: "Rolling Stones Mobile Studio")
  location: "Ueno, Tokyo, Japan",
  price: 5000,
  desciption: "This one could get on here just for the novelty of having what’s basically a truck with a recording studio in it, but it’s actually been the site of a number of insanely good recordings. It was set up by Mick Jagger when he got sick of all the problems of using regular recording studios.",
  capacity: 3,
  user: ryo)

Studio.create!(
  name: "Capitol Studios")
  location: "Tsukiji, Tokyo, Japan",
  price: 47000,
  desciption: "The studios are most famous for being the place where Frank Sinatra did a lot of his recordings — his microphone is still here, and the band Bastille recently recorded on it — as well as being a home to Nat King Cole and the Beach Boys.",
  capacity: 10,
  user: ryo)

Studio.create!(
  name: "Lee “Scratch” Perry’s Black Ark")
  location: "Ginza, Tokyo, Japan",
  price: 22000,
  desciption: "While not quite as mainstream, and definitely more low-tech than nearby Studio One, the Black Ark was known for Perry’s innovative producing techniques, and also for his incredibly strange behavior.",
  capacity: 5,
  user: doug)

Studio.create!(
  name: "Hans Zimmer’s Music Lair")
  location: "Asakusa, Tokyo, Japan",
  price: 33000,
  desciption: "You may not have heard of Hans Zimmer, but you’ve definitely listened to him. Zimmer is the German composer known for writing the scores to movies like Gladiator, The Dark Knight, Inception, and The Lion King.",
  capacity: 6,
  user: ainaa)

Studio.create!(
  name: "Chase Park Transduction")
  location: "Yoyogi, Tokyo, Japan",
  price: 28000,
  desciption: "It’s recorded the granddaddy of Athens rock bands, REM, as well as acts like Bright Eyes, Deerhunter, Animal Collective, and Queens of the Stone Age.",
  capacity: 8,
  user: ryo)

Studio.create!(
  name: "Rockfield Recording Studio")
  location: "Marunochi, Tokyo, Japan",
  price: 38000,
  desciption: "Built out of a ramshackle set of old farm buildings and solid stone studios, it has a unique sound that was well described in the name - rock field, indeed. A glance down their catalogue reads like a who’s who.",
  capacity: 4,
  user: ainaa)

Studio.create!(
  name: "Impact Hub")
  location: "Meguro, Tokyo, Japan",
  price: 4000,
  desciption: "Not known in the local scene but a hot up-and-coming space for musicians to make good music. The acoustics are spot-on and the coffee isn't bad either.",
  capacity: 9,
  user: doug)

Studio.create!(
  name: "Gold Star Recording Studios")
  location: "Ebisu, Tokyo, Japan",
  price: 42000,
  desciption: "It was the recording ‘home’ of ABC-TV’s prime-time Rock & Roll Show Shindig and became the perfect and natural creative home for so many major artists.",
  capacity: 6,
  user: ryo)

puts "...users and studios seeded."
