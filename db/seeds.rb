puts "***************************************************"
puts "|            Bem Vindo ao Mr Gigz Seeds           |"
puts "***************************************************"
puts ""
puts "Cleaning up your database"
puts ""

puts "Deleting messages"
puts ""
Message.destroy_all
puts "Deleting conversations"
puts ""
Conversation.destroy_all
puts "Deleting tags connections"
puts ""
MyTag.destroy_all
GigTag.destroy_all
Tag.destroy_all
puts "Deleting tags"
puts ""
puts "Deleting gigs applies"
puts ""
Apply.destroy_all
puts "Deleting gigs"
puts ""
Gig.destroy_all
puts "Deleting all bars"
puts ""
Bar.destroy_all
puts "Deleting all bands"
puts ""
Band.destroy_all
puts "Deleting all users"
puts ""
User.destroy_all


puts "Creating new Tags"
puts ""

rock = Tag.create!(genre: 'Rock')
pop = Tag.create!(genre: 'Pop')
sertanejo = Tag.create!(genre: 'Sertanejo')
samba = Tag.create!(genre: 'Samba')
mpb = Tag.create!(genre: 'MPB')
punk = Tag.create!(genre: 'Punk')
surf = Tag.create!(genre: 'Surf')
metal = Tag.create!(genre: 'Metal')
godico = Tag.create!(genre: 'Gotico')
gospel = Tag.create!(genre: 'Gospel')
romantico = Tag.create!(genre: 'Romantico')
chorinho = Tag.create!(genre: 'Chorinho')
forro = Tag.create!(genre: 'Forro')
nacional = Tag.create!(genre: 'Nacional')
internacional = Tag.create!(genre: 'Internacional')
disco = Tag.create!(genre: 'Disco')
jazz = Tag.create!(genre: 'Jazz')
swing = Tag.create!(genre: 'Swing')
funk = Tag.create!(genre: 'Funk')
blues = Tag.create!(genre: 'Blues')
bebop = Tag.create!(genre: 'Bebop')
cool = Tag.create!(genre: 'Cool')
britanico = Tag.create!(genre: 'Britanico')
groove = Tag.create!(genre: 'Groove')
indie = Tag.create!(genre: 'Indie')
folk = Tag.create!(genre: 'Folk')
country = Tag.create!(genre: 'Country')

puts "Created #{Tag.all.count * 2} tags"
puts "Creating new users"
puts ""
users = []
user_bar = []

Tag.all.each do |tag|
  users << User.create!(email: "#{tag.genre}_band@gmail.com", password: '123456', role: 'band')
  user_bar << User.create!(email: "bar_#{tag.genre}@gmail.com", password: '123456', role: 'bar')
end

puts "Created #{User.all.count} users"
puts ""

rock_user = User.create!(email: 'rockband@gmail.com', password: '123456', role: 'band')
pop_user = User.create!(email: 'popband@gmail.com', password: '123456', role: 'band')
country_user = User.create!(email: 'country@gmail.com', password: '123456', role: 'band')
samba_user = User.create!(email: 'samba@gmail.com', password: '123456', role: 'band')
mpb_user = User.create!(email: 'mpbband@gmail.com', password: '123456', role: 'band')
pop_rock_user = User.create!(email: 'poprock@gmail.com', password: '123456', role: 'band')

bar_user_one = User.create!(email: 'bar_one@gmail.com', password: '123456', role: 'bar')
bar_user_two = User.create!(email: 'bar_two1@gmail.com', password: '123456', role: 'bar')
bar_user_three = User.create!(email: 'bar_three@gmail.com', password: '123456', role: 'bar')
bar_user_four = User.create!(email: 'bar_four@gmail.com', password: '123456', role: 'bar')
bar_user_five = User.create!(email: 'bar_five@gmail.com', password: '123456', role: 'bar')

puts "Created a few more user (Total: #{User.count})"
puts "Creating new bands"
puts ""

bar_images = ['https://images.unsplash.com/photo-1513309914637-65c20a5962e1?ixlib=rb-0.3.5&ixid=
  eyJhcHBfaWQiOjEyMDd9&s=228f272007b6369007faeba1901c3274&auto=format&fit=crop&w=1350&q=80','https://images.unsplash.com/photo-
  1468072114808-903e572b8ead?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9b463368e97bb53abbab20a7a0237744&auto=format&fit=
  crop&w=1266&q=80', 'https://images.unsplash.com/photo-1517638851339-a711cfcf3279?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyM
  Dd9&s=6b7d3fd7313e179636c1189245a70534&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1512805147242-c3e
  79caf64bf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f89e5d8f05a055a7087b6e6ca146527e&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1434569842867-4d6d1d4d1ef0?ixlib
  =rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=15c0a622b638b386d523ad4cfc681691&auto=format&fit=crop&w=1950&q=80', 'https://images.unsplash.com/photo-1513003604845-103fe8aaf4e6?ixlib=rb-0.3.5&ixid=
  eyJhcHBfaWQiOjEyMDd9&s=fa3d6a72156a9b7ff6a5a40288267617&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1494962227006-107baac595eb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEy
  MDd9&s=bb6541d87c6c4e45aa07f513224db142&auto=format&fit=crop&w=1353&q=80', 'https://images.unsplash.com/uploads/1412198485051133af17f/5049dacb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dddba898
  12ed0325b966bf07aba683e3&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1503788311183-fa3bf9c4bc32?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=22a6f0b55dd62647508c8a81b6ac3
  071&auto=format&fit=crop&w=1350&q=80']
addresses = ['Rua Mourato Coelho, 105', 'Rua Apinages, 300', 'Rua Aspicuelta, 644', 'Rua Purpurina, 306', 'Rua Doutor Eduardo de Souza Aranha, 377', 'Rua dos Chanes, 627', 'Rua Ministro Jesuino Cardoso, 181', 'Avenida Paulista, 500', 'Rua Inacio Pereira da Rocha, 400', 'Avenida Brasil, Sao Paulo']


bar_images.each_with_index do |image, index|
  tag = Tag.all.sample
  bar = Bar.create!(address: addresses[index], user: user_bar[index], name: "Bar #{tag.genre}")
  bar.remote_photo_url = image
  bar.save
end


rock_band_url = 'https://images.unsplash.com/photo-1508252592163-5d3c3c559f36?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=ec1ecefddebe708d9f122e4ef5372b04&auto=format&fit=crop&w=1350&q=80'
rock_band = Band.new(name: 'The Rockers', user: rock_user, minimum_price: '300', description: 'Somos uma banda
  que toca junto faz 5 anos, tendo como principais influencias Led Zeppelin e Black Sabbath. Tocamos casualmente de finais
   de semana, mas sempre com muita compentencia e compromisso. Aceitamos cervejinhas como parte do pagamento')
rock_band.remote_photo_url = rock_band_url
rock_band.save
MyTag.create!(band: rock_band, tag: rock)
MyTag.create!(band: rock_band, tag: internacional)

pop_band_url = 'https://images.unsplash.com/photo-1518552722618-737f6d8e91c6?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=20e3528b582270383b6b01e784e50c7c&auto=format&fit=crop&w=1350&q=80'
pop_band = Band.new(name: 'The Roman Times', user: pop_user, minimum_price: '450', description: 'Ola, nos somos The Roman Times, uma banda
  de Pop Rock, com uma pegada mais puxada para o U2. Adoramos tocar na noite, e todos os membros tocam a muito tempo. Ficaremos felizes com
  qualquer proposta')
pop_band.remote_photo_url = pop_band_url
pop_band.save
MyTag.create!(band: pop_band, tag: pop)
MyTag.create!(band: pop_band, tag: internacional)
MyTag.create!(band: pop_band, tag: nacional)

country_band_url = 'https://images.unsplash.com/photo-1516016906593-866c0d0356af?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=94b14b7f05f19b3bf6ef1ee7d21e07e6&auto=format&fit=crop&w=1350&q=80'
country_band = Band.new(name: 'Luisiana Plains', user: country_user, minimum_price: '300', description: 'Tocamos frequentemente na Vila Country,
  tentamos diversificar no nosso som com algumas pegadas diferentes, tentando dar uma variada na playlist, somos bastante flexiveis em relacao a muicas.
  Todos os membros sao bastante ecleticos e gostam de musica boa, independente de genero!')
country_band.remote_photo_url = country_band_url
country_band.save
MyTag.create!(band: country_band, tag: country)
MyTag.create!(band: country_band, tag: rock)
MyTag.create!(band: country_band, tag: folk)

samba_band_url = 'https://images.unsplash.com/photo-1518886849533-2a7b825fe852?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=caafb9f7f5f2804d01e4f7d8ba483418&auto=format&fit=crop&w=1347&q=80'
samba_band = Band.new(name: 'samba Band', user: samba_user, minimum_price: '300', description: 'Somos uma banda de samba que toca faz 5 anos com muito
  comprometimento. Todos os musicos sao super serios e estao disponivies para tocar na regiao de SP')
samba_band.remote_photo_url = samba_band_url
samba_band.save
MyTag.create!(band: samba_band, tag: samba)

mpb_band_url = 'https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-0.3.5&ixid=
eyJhcHBfaWQiOjEyMDd9&s=0debe31c6e62bc9fd67ef3a8c1b43bd0&auto=format&fit=crop&w=1349&q=80'
mpb_band = Band.new(name: 'mpb Band', user: mpb_user, minimum_price: '100', description: 'Sou um musico de mpb que toca faz 5 anos com muito
  comprometimento. Estou disponivel para tocar na regiao de SP')
mpb_band.remote_photo_url = mpb_band_url
mpb_band.save
MyTag.create!(band: mpb_band, tag: mpb)

pop_rock_band_url = 'https://images.unsplash.com/photo-1481886756534-97af88ccb438?ixlib=
rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=647d9bcf339347ac2104b4ef7868a9da&auto=format&fit=crop&w=1489&q=80'
pop_rock_band = Band.new(name: 'pop_rock Band', user: pop_rock_user, minimum_price: '250', description: 'Somos uma banda de Pop Rock que toca faz 5 anos com muito
  comprometimento. Todos os musicos sao super serios e estao disponivies para tocar na regiao de SP')
pop_rock_band.remote_photo_url = pop_rock_band_url
pop_rock_band.save
MyTag.create!(band: pop_rock_band, tag: rock)
MyTag.create!(band: pop_rock_band, tag: pop)

puts "Created #{Band.all.count} bands"
puts ""

puts "Creating new Bars"
puts ""

rock_bar_url = 'https://images.unsplash.com/photo-1456743625079-86a97ff8bc86?ixlib=rb-0.3.5&
ixid=eyJhcHBfaWQiOjEyMDd9&s=eebf1f844460b2b340c876eb14ee2861&auto=format&fit=crop&w=1489&q=80'
rock_bar = Bar.create!(name: 'Bar Le Wagon', address: 'Rua Mourato Coelho 1404', user: bar_user_one)
rock_bar.remote_photo_url = rock_bar_url
rock_bar.save

pop_bar_url = 'https://images.unsplash.com/photo-1532499408512-a163ed4b16a7?ixlib=rb-0.3.5&
ixid=eyJhcHBfaWQiOjEyMDd9&s=b80b8460b37bd0aa447bf44ea1620b24&auto=format&fit=crop&w=1350&q=80'
pop_bar = Bar.create!(name: 'Pinguçu', address: 'Rua Ministro Godoi 340', user: bar_user_one)
pop_bar.remote_photo_url = pop_bar_url
pop_bar.save

sertanejo_bar_url = 'https://images.unsplash.com/photo-1523173508938-2dbf2c43d473?ixlib=rb-0.3.5&
ixid=eyJhcHBfaWQiOjEyMDd9&s=d71c648d8d781564da5f7f9e45f20deb&auto=format&fit=crop&w=1351&q=80'
sertanejo_bar = Bar.create!(name: 'Caipira House', address: 'Rua Inacio Peireira da Rocha, 400', user: bar_user_one)
sertanejo_bar.remote_photo_url = sertanejo_bar_url
sertanejo_bar.save

samba_bar_url = 'https://images.unsplash.com/photo-1515612457076-03034c364cd4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&
s=dc6445bbd3690e76bfb94e4d7dfb6836&auto=format&fit=crop&w=1350&q=80'
samba_bar = Bar.create!(name: 'O Tomador', address: 'Rua Teodoro Sampaio 150', user: bar_user_one)
samba_bar.remote_photo_url = samba_bar_url
samba_bar.save

mpb_bar_url = 'https://images.unsplash.com/photo-1481833761820-0509d3217039?ixlib=rb-0.3.5&
ixid=eyJhcHBfaWQiOjEyMDd9&s=3fb6b264e88b8819ae92aa44494eca81&auto=format&fit=crop&w=1350&q=80'
mpb_bar = Bar.create!(name: 'Entretanto Bar', address: 'Rua Rodesia 500', user: bar_user_one)
mpb_bar.remote_photo_url = mpb_bar_url
mpb_bar.save

puts "Created #{Bar.all.count} bars"
puts ""

def time_rand from = Time.now, to = Time.now + 1000000
  Time.at(from + rand * (to.to_f - from.to_f))
end

Bar.all.each do |bar|
  time = time_rand
  tag = Tag.all.sample
  tag2 = Tag.where.not(genre: tag.genre).sample
  gig = Gig.create!(bar: bar, description: "A melhor noite de #{tag.genre} em SP!!! Teremos um publico de por volta de #{rand(50..300)} pessoas,
    e uma banda muito boa para animar essa galera", start_date: time, end_date: time, date: time.to_date, cache: rand(311..1042))
  GigTag.create!(tag_id: tag.id, gig_id: gig.id)
  GigTag.create!(tag_id: tag2.id, gig_id: gig.id)
  time = time_rand
  tag = Tag.all.sample
  tag2 = Tag.where.not(genre: tag.genre).sample
  gig = Gig.create!(bar: bar, description: "A melhor noite de #{tag.genre} em SP!!! Teremos um publico de por volta de #{rand(50..300)} pessoas,
    e uma banda muito boa para animar essa galera", start_date: time, end_date: time, date: time.to_date, cache: rand(311..1042))
  GigTag.create!(tag: tag, gig: gig)
  GigTag.create!(tag: tag2, gig: gig)
end

images = ['https://images.unsplash.com/photo-1505058707965-09a4469a87e4?ixlib=rb-0.3.5&
ixid=eyJhcHBfaWQiOjEyMDd9&s=07a78ca4d41f04cad17ecb9d8481f565&auto=format&fit=crop&w=1350&q=80', 'https:
//images.unsplash.com/photo-1497342860825-91ff79bb8a7c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=090b8
385e1feaba89750ebd13745d100&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1481935748467-225fb550a66e?ixlib
=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=380d03bb58f36c772e43f05dc024a44a&auto=format&fit=crop&w=1317&q=80', 'https://images.unsplash.
com/photo-1512404871764-1cf03a297841?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1773c742cc0fabd894049c789adb2e72&auto=format&fit=crop&w=1350&q=80',
'https://images.unsplash.com/photo-1474692295473-66ba4d54e0d3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=011de1da09df52cd8990a2282c5d38d1&auto=form
at&fit=crop&w=1276&q=80', 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5b811266a4cf56733a
98b08047ffe3ed&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1507901747481-84a4f64fda6d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s
=cc5f305f0f66a4e4f5138416946456d5&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1499446006265-e90482c49025?ixlib=rb-0.3.5&ixid=eyJh
cHBfaWQiOjEyMDd9&s=40d6efa8c4937c7eb633d8190af66b4e&auto=format&fit=crop&w=1225&q=80', 'https://images.unsplash.com/photo-1512749831818-40542429a606?ixlib=rb-0.3.5&ixid
=eyJhcHBfaWQiOjEyMDd9&s=1f3d1f3a501ea00614ad976aee4f0deb&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1467317520917-b7451a8e99d7?ixlib=rb-0.3.5&s=
a1ba1d9e6ff930d55de91fc80ac81ef6&auto=format&fit=crop&w=1363&q=80', 'https://images.unsplash.com/photo-1512140528825-526de61a5bcb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s
=a4853f6b80bd9f23e90279b865f5665c&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1525025500848-f00b7d362dec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=
54bb7909f1d65e323278536d1fb2e06b&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1527091736853-64ca6a9b64d9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f
d5710eed8516997f943a97ef4de40d8&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1477611160464-0b9fb6404529?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e
5b40b3ee6d0c7ad423c4d5db2a19c00&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1508179735919-161405495554?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=
3ef0f80a8c81517ddf10b0cdf773fd3a&auto=format&fit=crop&w=1900&q=80', 'https://images.unsplash.com/photo-1516108759901-daf1a20f9281?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=53
5bb00cdf05aebc04ebb8fe3ed47d04&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1504637929313-c8eebe7c27af?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=
03f18f5a17062544b8b92ee4189aef23&auto=format&fit=crop&w=1348&q=80', 'https://images.unsplash.com/photo-1520693700639-99eec807302c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=
4d204c1672398383d54486613013e408&auto=format&fit=crop&w=1352&q=80', 'https://images.unsplash.com/photo-1533593184105-06d93344a54f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=
2f715497b95205bbbfec8c2a96a5cc62&auto=format&fit=crop&w=1349&q=80']

images.each_with_index do |image, index|
  url = image
  tag = Tag.all.sample
  tag2 = Tag.all.where.not(genre: tag.genre).sample
  band = Band.create!(name: "#{tag.genre} Band", user: users[index], minimum_price: rand(100..500), description: "Sou uma banda de #{tag.genre} que toca faz 5 anos com muito
  comprometimento. Estou disponivel para tocar na regiao de SP")
  MyTag.create!(band_id: band.id, tag_id: tag.id)
  band.remote_photo_url = url
  band.save
end

# gig_one = Gig.create!(start_date: Time.now, description: 'A melhor sexta de rock da Vila Madalena', bar: rock_bar, cache: '250', end_date: Time.now)
# gig_two = Gig.create!(start_date: Time.now, description: 'A melhor sexta de pop da Vila Madalena', bar:pop_bar, cache: '180', end_date: Time.now)
# gig_three = Gig.create!(start_date: Time.now, description: 'A melhor sexta de sertanejo da Vila Madalena', bar: sertanejo_bar, cache: '320', end_date: Time.now)
# gig_four = Gig.create!(start_date: Time.now, description: 'A melhor sexta de samba da Vila Madalena', bar:samba_bar, cache: '280', end_date: Time.now)
# gig_five = Gig.create!(start_date: Time.now, description: 'A melhor sexta de mpb da Vila Madalena', bar: mpb_bar, cache: '150', end_date: Time.now)
# gig_six = Gig.create!(start_date: Time.now, description: 'Sábado é dia de muito pop na Vila Madalena', bar: rock_bar, cache: '250', end_date: Time.now)
# gig_seven = Gig.create!(start_date: Time.now, description: 'Sábado é dia de muito sertanejo na Vila Madalena', bar:pop_bar, cache: '180', end_date: Time.now)
# gig_eight = Gig.create!(start_date: Time.now, description: 'Sábado é dia de muito samba da Vila Madalena', bar: sertanejo_bar, cache: '320', end_date: Time.now)
# gig_nine = Gig.create!(start_date: Time.now, description: 'Sábado é dia de muito mpb da Vila Madalena', bar:samba_bar, cache: '280', end_date: Time.now)
# gig_ten = Gig.create!(start_date: Time.now, description: 'Domingo bomba com rock da Vila Madalena', bar: mpb_bar, cache: '150', end_date: Time.now)
# gig_eleven = Gig.create!(start_date: Time.now, description: 'Domingo bomba com muito pop na Vila Madalena', bar: rock_bar, cache: '250', end_date: Time.now)
# gig_twelve = Gig.create!(start_date: Time.now, description: 'Domingo bomba com muito sertanejo na Vila Madalena', bar:pop_bar, cache: '180', end_date: Time.now)
# gig_thirten = Gig.create!(start_date: Time.now, description: 'Domingo bomba com muito samba da Vila Madalena', bar: sertanejo_bar, cache: '320', end_date: Time.now)
# gig_fourten = Gig.create!(start_date: Time.now, description: 'Domingo bomba com muito mpb da Vila Madalena', bar:samba_bar, cache: '280', end_date: Time.now)
# gig_fiften = Gig.create!(start_date: Time.now, description: 'Terça tem novidade com Rock da Vila Madalena', bar: mpb_bar, cache: '150', end_date: Time.now)
# gig_sixten = Gig.create!(start_date: Time.now, description: 'Terça tem novidade com pop na Vila Madalena', bar: rock_bar, cache: '250', end_date: Time.now)
# gig_seventen = Gig.create!(start_date: Time.now, description: 'Terça tem novidade com sertanejo na Vila Madalena', bar:pop_bar, cache: '180', end_date: Time.now)
# gig_eighten = Gig.create!(start_date: Time.now, description: 'Terça tem novidade com muito samba da Vila Madalena', bar: sertanejo_bar, cache: '320', end_date: Time.now)
# gig_nineten = Gig.create!(start_date: Time.now, description: 'Terça tem novidade com mpb da Vila Madalena', bar:samba_bar, cache: '280', end_date: Time.now)





