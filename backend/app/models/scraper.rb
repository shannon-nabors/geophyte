require 'byebug'
require 'nokogiri'
require 'open-uri'

class Scraper

    def seed
        html = open("https://en.wikipedia.org/wiki/List_of_current_heads_of_state_and_government")
        base_url = "https://en.wikipedia.org"
        doc = Nokogiri::HTML(html)

        doc.css(".wikitable").css("tbody")[0].children.each do |row|
            if row.text != "\n" && row.css(".flagicon").length > 0
                country_name = row.css("a").first.attributes["title"].value

                country_html = open(base_url + row.css("a").first.attributes["href"].value)
                country_doc = Nokogiri::HTML(country_html)
                
                flag_image = country_doc.css('img').find {|image| image.attributes['alt'] && image.attributes['alt'].value.downcase.include?("flag" || "triband")}
                flag = flag_image.attributes["src"].value
    
                country = Nation.seed(country_name, flag)
                # country = Nation.create(name: country_name)

                label = true
                position = nil
                name = nil
                photo = nil

                if row.css('td').length > 0
                    row.css('td').each do |cell|
                        cell.css('a').each do |link|
                            if link.parent.name == "td"
                                if label
                                    position = link.text
                                else
                                    name = link.text
                                    if (!link.attributes["title"].value.include?("page does not exist"))
                                        leader_html = open(base_url + link.attributes["href"].value)
                                        leader_doc = Nokogiri::HTML(leader_html)
                                        puts name
                                        infobox = leader_doc.css(".infobox")[0]
                                        if infobox
                                            pic = infobox.css("img")[0]
                                            if pic
                                                photo = "https:" + pic.attributes["src"].value
                                            end
                                        end
                                    end
                                end
                                label = !label
                                if label
                                    leader = Leader.find_or_create_by(title: position, name: name, photo: photo)
                                    NationLeader.create(nation: country, leader: leader)
                                end
                                photo = nil
                            end
                        end
                    end
                end

            end
        end
    end

end