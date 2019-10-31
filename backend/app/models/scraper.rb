require 'byebug'
require 'nokogiri'
require 'open-uri'

class Scraper
  def seed
    base_url = "https://en.wikipedia.org"
    html = open(base_url + "/wiki/List_of_current_heads_of_state_and_government")
    doc = Nokogiri::HTML(html)

    doc.css(".wikitable").css("tbody")[0].children.each do |row|
      if row.text != "\n" && row.css(".flagicon").length > 0
        country_name = row.css("a").first.attributes["title"].value
        country_name = (country_name.include?("(") ? "Georgia" : country_name)
        country = Nation.seed(country_name)

        label = true
        position = nil
        name = nil

        if row.css('td').length > 0
          row.css('td').each do |cell|
            cell.css('a').each do |link|
              if link.parent.name == "td"
                if label
                  position = link.text
                else
                  name = link.text
                end
                label = !label
                if label
                    leader = Leader.seed(name, position)
                    NationLeader.create(nation: country, leader: leader)
                end
              end
            end
          end
        end

      end
    end
  end

end 