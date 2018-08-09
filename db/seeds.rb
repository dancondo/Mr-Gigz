# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Bar.destroy_all
# Band.destroy_all
# User.destroy_all

# bar_user = User.new(role: :bar)
# band_user = User.new(role: :band)


# Bar.create!(user: bar_user, name: 'Spirugiro', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Estação São Paulo', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'KiaOra', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Traço de União', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Tokio', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Pampa Grill', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Jobi', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Pizzaria Guanabara', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Azur', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'The Sailorman', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Bar Budo', address: 'Rua Zapara 114')
# Bar.create!(user: bar_user, name: 'Apertou, agora amassa', address: 'Rua Zapara 114')


# Tag.create!(genre: 'Samba')
# Tag.create!(genre: 'Choro')
# Tag.create!(genre: 'Pagode')
# Tag.create!(genre: 'Sertanejo')
# Tag.create!(genre: 'Bahia')
# Tag.create!(genre: 'Funk')
# Tag.create!(genre: 'Forró')
# Tag.create!(genre: 'Hip Hop')
# Tag.create!(genre: 'R&B')
# Tag.create!(genre: 'Blues')
# Tag.create!(genre: 'Bossa Nova')
# Tag.create!(genre: 'Jazz')
# Tag.create!(genre: 'Pop Nac/Int.')
# Tag.create!(genre: 'MPB')
# Tag.create!(genre: 'Jovem Guarda')
# Tag.create!(genre: 'Disco')
# Tag.create!(genre: 'Rock')
# Tag.create!(genre: 'Metal')
# Tag.create!(genre: 'Rock Alternativo')
# Tag.create!(genre: 'Hard Rock')
# Tag.create!(genre: 'Indie Rock')
# Tag.create!(genre: 'Pop Rock')
# Tag.create!(genre: 'Reggae')
# Tag.create!(genre: 'Salsa/Latina')
# Tag.create!(genre: 'Gospel')

# Band.create!(user: band_user, name: 'Raul Seixas', description: 'tqwtfdghejglçktrl', photo: 'https://abrilveja.files.wordpress.com/2016/06/raul-seixas-20140820-71-original.jpeg?quality=70&amp', minimum_price: 100)
# Band.create!(user: band_user, name: 'Led Zeppelin', description: 'tqwtfdghejglçktrl', photo: 'www.ledzeppelin.com//sites/g/files/g2000006376/f/201706/led_zeppelin_photo1.jpg', minimum_price: 150)
# Band.create!(user: band_user, name: 'Metallica', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2017/03/2294508-220x220.jpg', minimum_price: 180)
# Band.create!(user: band_user, name: 'Iron Maiden', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2014/11/Disco-de-Vinil-Iron-Maiden-The-number-Of-The-Beast.jpg', minimum_price: 180)
# Band.create!(user: band_user, name: 'AC DC', description: 'tqwtfdghejglçktrl', photo: 'http://armazemdovinil.com/wp-content/uploads/2017/12/3234277-220x220.jpg', minimum_price: 130)
# Band.create!(user: band_user, name: 'Bob Marley', description: 'um show com muita fumaça e skank liberado', photo: 'https://armazemdovinil.com/wp-content/uploads/2016/11/R-4296423-1361027192-8554.jpeg-510x510.jpg', minimum_price: 120)
# Band.create!(user: band_user, name: 'Raul Seixas', description: 'tqwtfdghejglçktrl', photo: 'https://abrilveja.files.wordpress.com/2016/06/raul-seixas-20140820-71-original.jpeg?quality=70&amp', minimum_price: 100)
# Band.create!(user: band_user, name: 'Led Zeppelin', description: 'tqwtfdghejglçktrl', photo: 'www.ledzeppelin.com//sites/g/files/g2000006376/f/201706/led_zeppelin_photo1.jpg', minimum_price: 150)
# Band.create!(user: band_user, name: 'Metallica', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2017/03/2294508-220x220.jpg', minimum_price: 180)
# Band.create!(user: band_user, name: 'Iron Maiden', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2014/11/Disco-de-Vinil-Iron-Maiden-The-number-Of-The-Beast.jpg', minimum_price: 180)
# Band.create!(user: band_user, name: 'AC DC', description: 'tqwtfdghejglçktrl', photo: 'http://armazemdovinil.com/wp-content/uploads/2017/12/3234277-220x220.jpg', minimum_price: 130)
# Band.create!(user: band_user, name: 'Bob Marley', description: 'um show com muita fumaça e skank liberado', photo: 'https://armazemdovinil.com/wp-content/uploads/2016/11/R-4296423-1361027192-8554.jpeg-510x510.jpg', minimum_price: 120)

MyTag.destroy_all
GigTag.destroy_all
Tag.destroy_all
Apply.destroy_all
Gig.destroy_all
Bar.destroy_all
Band.destroy_all
User.destroy_all

rock = Tag.create!(genre: 'Rock')
pop = Tag.create!(genre: 'Pop')
sertanejo = Tag.create!(genre: 'Sertanejo')
samba = Tag.create!(genre: 'Samba')
mpb = Tag.create!(genre: 'MPB')

rock_user = User.create!(email: 'rock_band@gmail.com', password: '123456')
pop_user = User.create!(email: 'pop_band@gmail.com', password: '123456')
sertanejo_user = User.create!(email: 'sertanejo@gmail.com', password: '123456')
samba_user = User.create!(email: 'samba@gmail.com', password: '123456')
mpb_user = User.create!(email: 'mpb_band@gmail.com', password: '123456')
pop_rock_user = User.create!(email: 'pop_rock@gmail.com', password: '123456')

bar_one = User.create!(email: 'bar_one@gmail.com', password: '123456')
bar_two = User.create!(email: 'bar_two@gmail.com', password: '123456')
bar_3 = User.create!(email: 'bar_3@gmail.com', password: '123456')
bar_4 = User.create!(email: 'bar_4@gmail.com', password: '123456')
bar_5 = User.create!(email: 'bar_5@gmail.com', password: '123456')

rock_band_url = 'https://images.unsplash.com/photo-1508252592163-5d3c3c559f36?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=ec1ecefddebe708d9f122e4ef5372b04&auto=format&fit=crop&w=1350&q=80'
rock_band = Band.new(name: 'Rock Band', user: rock_user, minimum_price: '500')
rock_band.remote_photo_url = rock_band_url
rock_band.save
MyTag.create!(band: rock_band, tag: rock)

pop_band_url = 'https://images.unsplash.com/photo-1518552722618-737f6d8e91c6?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=20e3528b582270383b6b01e784e50c7c&auto=format&fit=crop&w=1350&q=80'
pop_band = Band.new(name: 'Pop Band', user: pop_user, minimum_price: '450')
pop_band.remote_photo_url = pop_band_url
pop_band.save
MyTag.create!(band: pop_band, tag: pop)

sertanejo_band_url = 'https://images.unsplash.com/photo-1516016906593-866c0d0356af?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=94b14b7f05f19b3bf6ef1ee7d21e07e6&auto=format&fit=crop&w=1350&q=80'
sertanejo_band = Band.new(name: 'Sertanejo Band', user: sertanejo_user, minimum_price: '800')
sertanejo_band.remote_photo_url = sertanejo_band_url
sertanejo_band.save
MyTag.create!(band: sertanejo_band, tag: sertanejo)

samba_band_url = 'https://images.unsplash.com/photo-1518886849533-2a7b825fe852?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=caafb9f7f5f2804d01e4f7d8ba483418&auto=format&fit=crop&w=1347&q=80'
samba_band = Band.new(name: 'samba Band', user: samba_user, minimum_price: '300')
samba_band.remote_photo_url = samba_band_url
samba_band.save
MyTag.create!(band: samba_band, tag: samba)

mpb_band_url = 'https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=0debe31c6e62bc9fd67ef3a8c1b43bd0&auto=format&fit=crop&w=1349&q=80'
mpb_band = Band.new(name: 'mpb Band', user: mpb_user, minimum_price: '100')
mpb_band.remote_photo_url = mpb_band_url
mpb_band.save
MyTag.create!(band: mpb_band, tag: mpb)

pop_rock_band_url = 'https://images.unsplash.com/photo-1481886756534-97af88ccb438?ixlib=
rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=647d9bcf339347ac2104b4ef7868a9da&auto=format&fit=crop&w=1489&q=80'
pop_rock_band = Band.new(name: 'pop_rock Band', user: pop_rock_user, minimum_price: '250')
pop_rock_band.remote_photo_url = pop_rock_band_url
pop_rock_band.save
MyTag.create!(band: pop_rock_band, tag: rock)
MyTag.create!(band: pop_rock_band, tag: pop)
