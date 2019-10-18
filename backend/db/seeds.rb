NationLeader.destroy_all
Nation.destroy_all
Leader.destroy_all

scraper = Scraper.new
scraper.seed

Nation.find_by(name: "Azerbaijan").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/125px-Flag_of_Azerbaijan.svg.png")
Nation.find_by(name: "Benin").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Benin.svg/125px-Flag_of_Benin.svg.png")
Nation.find_by(name: "Cameroon").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/125px-Flag_of_Cameroon.svg.png")
Nation.find_by(name: "Canada").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/125px-Flag_of_Canada_%28Pantone%29.svg.png")
Nation.find_by(name: "Israel").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/125px-Flag_of_Israel.svg.png")
Nation.find_by(name: "Japan").update(flag: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/125px-Flag_of_Japan.svg.png")
Nation.find_by(name: "South Korea").update(flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/125px-Flag_of_South_Korea.svg.png")

Leader.find_by(name: "Nursultan Nazarbayev").update(title: "Chairman of the Security Council")
Leader.find_by(name: "Prime Minister").update(title: "Sultan and Prime Minister", name: "Hassanal Bolkiah", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Hassanal_Bolkiah.jpg/220px-Hassanal_Bolkiah.jpg")
Leader.find_by(name: "Ali Asadov").update(photo: "https://cdn.trend.az/media/pictures/2019/10/08/ali-asadov-komekci1.jpg")
Leader.find_by(name: "Christophe Joseph Marie Dabiré").update(photo: "https://i2.wp.com/netafrique.net/wp-content/uploads/2019/01/chirs.jpg?fit=300%2C394&ssl=1")
Leader.find_by(name: "Firmin Ngrébada").update(photo: "https://afriquepanorama.com/wp-content/uploads/2019/07/Le-premier-ministre-centrafricain-Firmin-Ngrebada.jpg")
Leader.find_by(name: "Sylvestre Ilunga").update(photo: "https://ichef.bbci.co.uk/news/660/cpsprodpb/137CF/production/_107032897_ilunga.jpg")
Leader.find_by(name: "Charles Savarin").update(photo: "https://alchetron.com/cdn/charles-savarin-a00e9c2b-48af-40e0-8b48-3da7596e04b-resize-750.jpeg")
Leader.find_by(name: "Francisco Pascual Obama Asue").update(photo: "https://pbs.twimg.com/media/DVV5nGVWkAAYXA3.jpg")
Leader.find_by(name: "Julien Nkoghe Bekale").update(photo: "https://lalibreville.com/wp-content/uploads/2018/05/JNB.jpg")
Leader.find_by(name: "Ibrahima Kassory Fofana").update(photo: "https://www.guineenews.org/wp-content/uploads/2018/05/Kassory-Fofana-2.jpg")
Leader.find_by(name: "Aristides Gomes").update(photo: "https://www.dw.com/image/43409838_303.jpg")
Leader.find_by(name: "Fritz-William Michel").update(photo: "https://noticiassin.com/wp-content/uploads/2019/09/9adb0d4f-ministre.jpg")
Leader.find_by(name: "Sabah Al-Ahmad Al-Jaber Al-Sabah").update(photo: "https://www.kuna.net.kw/NewsPictures/2019/9/13/57146ae1-10b5-4b77-8419-17b60cf0b340.jpg")
Leader.find_by(name: "Prime Minister", title: "Chairman of the Presidential Council").update(photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Fayez_al-Sarraj_in_Washington_-_2017_%2838751877521%29_%28cropped%29.jpg/440px-Fayez_al-Sarraj_in_Washington_-_2017_%2838751877521%29_%28cropped%29.jpg", name: "Fayez al-Sarraj", title: "Prime Minister")
Leader.find_by(name: "Ismail Ould Bedde Ould Cheikh Sidiya").update(photo: "https://www.chezvlane.com/photo/art/grande/36203672-32440758.jpg?v=1565029630")
Leader.find_by(name: "Serge Telle").update(photo: "https://www.hellomonaco.com/wordpress/wp-content/uploads/2018/01/Serge-Telle-Minister-of-State2.jpg")
Leader.find_by(name: "Luca Boschi").update(photo: "http://www.libertas.sm/repository/editor_files/luca-boschi-c10-800x600.png")
Leader.find_by(name: "Jorge Bom Jesus").update(photo: "https://portugalinews.eu/wp-content/uploads/2018/11/Jorge-Bom-Jesus.jpg")
Leader.find_by(name: "David J. Francis").update(photo: "http://slconcordtimes.com/wp-content/uploads/2018/05/prof-258x300.jpg")
Leader.find_by(name: "Abdalla Hamdok").update(photo: "https://www.hydropower.org/sites/default/files/styles/sidebar_image/public/images/people/hamdok_4.gif?itok=jT6t06Bl")
Leader.find_by(name: "Pōhiva Tu'i'onetoa").update(photo: "https://www.abc.net.au/cm/rimage/11559158-1x1-large.jpg?v=4")
Leader.find_by(name: "Paula-Mae Weekes").update(photo: "http://www.guardian.co.tt/image-3.1501670.a42b39d48d?size=512")
Leader.find_by(name: "Kausea Natano").update(photo: "http://www.pina.com.fj/x-2/picture/news/thumb160919522cb2NATANO.jpg")
Leader.find_by(name: "Maeen Abdulmalik Saeed").update(photo: "https://avatars.io/twitter/DrMaeenSaeed/large")
Leader.find_by(name: "Ambrose Mandvulo Dlamini").update(photo: "http://new.observer.org.sz/administrator/news/1540676389.png")
Leader.find_by(name: "Christian Ntsay").update(photo: "https://pbs.twimg.com/media/De60tXpXUAAi_U2.jpg")
Leader.find_by(name: "Prime Minister", title: "Sultan").update(title: "Sultan and Prime Minister", name: "Qaboos bin Said al Said", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Omani_Qaboos_bin_Said_Al_Said_%28cropped%29.jpg/440px-Omani_Qaboos_bin_Said_Al_Said_%28cropped%29.jpg")
Leader.find_by(name: "Abdel Fattah al-Burhan").update(photo: "https://www.globalsecurity.org/military/world/sudan/images/burhan.jpg")

Leader.find_by(name: "Kim Jong-un").update(title: "Supreme Leader")
Leader.find_by(name: "Xi Jinping").update(title: "President")
Leader.find_by(name: "Nguyễn Phú Trọng").update(title: "President")

bensalah = Leader.create(name: "Abdelkader Bensalah", title: "Acting President", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/World_Leaders_Investment_Summit_%287098511567%29_%28cropped%29.jpg/440px-World_Leaders_Investment_Summit_%287098511567%29_%28cropped%29.jpg")
algeria = Nation.find_by(name: "Algeria")
NationLeader.create(leader: bensalah, nation: algeria)

maurer = Leader.create(name: "Ueli Maurer", title: "President", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Ueli_Maurer_2011.jpg/440px-Ueli_Maurer_2011.jpg")
switzerland = Nation.find_by(name: "Switzerland")
NationLeader.create(leader: maurer, nation: switzerland)

nguyen = Leader.create(name: "Nguyễn Xuân Phúc", title: "Prime Minister", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Vietnamese_Prime_Minister_Phuc.jpg/440px-Vietnamese_Prime_Minister_Phuc.jpg")
vietnam = Nation.find_by(name: "Vietnam")
NationLeader.create(leader: nguyen, nation: vietnam)