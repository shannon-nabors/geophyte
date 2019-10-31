NationLeader.destroy_all
Nation.destroy_all
Leader.destroy_all

scraper = Scraper.new
scraper.seed
# byebug
Leader.find_by(name: "Nursultan Nazarbayev").update(title: "Chairman of the Security Council")
Leader.find_by(name: "Prime Minister").update(title: "Sultan and Prime Minister", name: "Hassanal Bolkiah")
Leader.find_by(name: "Prime Minister", title: "Chairman of the Presidential Council").update(title: "Prime Minister", name: "Fayez al-Sarraj")
# Leader.find_by(name: "Prime Minister", title: "Sultan").update(title: "Sultan and Prime Minister", name: "Qaboos bin Said al Said")

Leader.find_by(name: "Kim Jong-un").update(title: "Supreme Leader")
Leader.find_by(name: "Xi Jinping").update(title: "President")
Leader.find_by(name: "Nguyễn Phú Trọng").update(title: "President")

bensalah = Leader.create(name: "Abdelkader Bensalah", title: "Acting President")
algeria = Nation.find_by(name: "Algeria")
NationLeader.create(leader: bensalah, nation: algeria)

maurer = Leader.create(name: "Ueli Maurer", title: "President")
switzerland = Nation.find_by(name: "Switzerland")
NationLeader.create(leader: maurer, nation: switzerland)

nguyen = Leader.create(name: "Nguyễn Xuân Phúc", title: "Prime Minister")
vietnam = Nation.find_by(name: "Vietnam")
NationLeader.create(leader: nguyen, nation: vietnam)

qasym = Leader.create(name: "Qasym-Zhomart Toqaev", title: "President")
kazakhstan = Nation.find_by(name: "Kazakhstan")
NationLeader.create(leader: qasym, nation: kazakhstan)

mamin = Leader.create(name: "Askar Mamin", title: "Prime Minister")
NationLeader.create(leader: mamin, nation: kazakhstan)

mularoni = Leader.create(name: "Mariella Mularoni", title: "Captain Regent")
sm = Nation.find_by(name: "San Marino")
NationLeader.create(leader: mularoni, nation: sm)

Leader.all.each do |leader|
    leader.attach_photo
end