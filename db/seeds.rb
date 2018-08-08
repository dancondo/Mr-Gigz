# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.destroy_all
Band.destroy_all
User.destroy_all

bar_user = User.new(role: :bar)
band_user = User.new(role: :band)


Bar.create!(user: bar_user, name: 'Spirugiro', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Estação São Paulo', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'KiaOra', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Traço de União', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Tokio', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Pampa Grill', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Jobi', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Pizzaria Guanabara', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Azur', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'The Sailorman', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Bar Budo', address: 'Rua Zapara 114')
Bar.create!(user: bar_user, name: 'Apertou, agora amassa', address: 'Rua Zapara 114')


Tag.create!(genre: 'Samba')
Tag.create!(genre: 'Choro')
Tag.create!(genre: 'Pagode')
Tag.create!(genre: 'Sertanejo')
Tag.create!(genre: 'Bahia')
Tag.create!(genre: 'Funk')
Tag.create!(genre: 'Forró')
Tag.create!(genre: 'Hip Hop')
Tag.create!(genre: 'R&B')
Tag.create!(genre: 'Blues')
Tag.create!(genre: 'Bossa Nova')
Tag.create!(genre: 'Jazz')
Tag.create!(genre: 'Pop Nac/Int.')
Tag.create!(genre: 'MPB')
Tag.create!(genre: 'Jovem Guarda')
Tag.create!(genre: 'Disco')
Tag.create!(genre: 'Rock')
Tag.create!(genre: 'Metal')
Tag.create!(genre: 'Rock Alternativo')
Tag.create!(genre: 'Hard Rock')
Tag.create!(genre: 'Indie Rock')
Tag.create!(genre: 'Pop Rock')
Tag.create!(genre: 'Reggae')
Tag.create!(genre: 'Salsa/Latina')
Tag.create!(genre: 'Gospel')

Band.create!(user: band_user, name: 'Raul Seixas', description: 'tqwtfdghejglçktrl', photo: 'https://abrilveja.files.wordpress.com/2016/06/raul-seixas-20140820-71-original.jpeg?quality=70&amp', minimum_price: 100)
Band.create!(user: band_user, name: 'Led Zeppelin', description: 'tqwtfdghejglçktrl', photo: 'www.ledzeppelin.com//sites/g/files/g2000006376/f/201706/led_zeppelin_photo1.jpg', minimum_price: 150)
Band.create!(user: band_user, name: 'Metallica', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2017/03/2294508-220x220.jpg', minimum_price: 180)
Band.create!(user: band_user, name: 'Iron Maiden', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2014/11/Disco-de-Vinil-Iron-Maiden-The-number-Of-The-Beast.jpg', minimum_price: 180)
Band.create!(user: band_user, name: 'AC DC', description: 'tqwtfdghejglçktrl', photo: 'http://armazemdovinil.com/wp-content/uploads/2017/12/3234277-220x220.jpg', minimum_price: 130)
Band.create!(user: band_user, name: 'Bob Marley', description: 'um show com muita fumaça e skank liberado', photo: 'https://armazemdovinil.com/wp-content/uploads/2016/11/R-4296423-1361027192-8554.jpeg-510x510.jpg', minimum_price: 120)
Band.create!(user: band_user, name: 'Raul Seixas', description: 'tqwtfdghejglçktrl', photo: 'https://abrilveja.files.wordpress.com/2016/06/raul-seixas-20140820-71-original.jpeg?quality=70&amp', minimum_price: 100)
Band.create!(user: band_user, name: 'Led Zeppelin', description: 'tqwtfdghejglçktrl', photo: 'www.ledzeppelin.com//sites/g/files/g2000006376/f/201706/led_zeppelin_photo1.jpg', minimum_price: 150)
Band.create!(user: band_user, name: 'Metallica', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2017/03/2294508-220x220.jpg', minimum_price: 180)
Band.create!(user: band_user, name: 'Iron Maiden', description: 'tqwtfdghejglçktrl', photo: 'https://armazemdovinil.com/wp-content/uploads/2014/11/Disco-de-Vinil-Iron-Maiden-The-number-Of-The-Beast.jpg', minimum_price: 180)
Band.create!(user: band_user, name: 'AC DC', description: 'tqwtfdghejglçktrl', photo: 'http://armazemdovinil.com/wp-content/uploads/2017/12/3234277-220x220.jpg', minimum_price: 130)
Band.create!(user: band_user, name: 'Bob Marley', description: 'um show com muita fumaça e skank liberado', photo: 'https://armazemdovinil.com/wp-content/uploads/2016/11/R-4296423-1361027192-8554.jpeg-510x510.jpg', minimum_price: 120)



