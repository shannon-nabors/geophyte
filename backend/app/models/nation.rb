class Nation < ApplicationRecord
    has_many :nation_leaders
    has_many :leaders, through: :nation_leaders
    has_one_attached :flag

    def self.seed(name)
        country = Nation.create(name: name)
        country.attach_flag
        return country
    end

    def attach_flag
        fl = ActiveSupport::Inflector.transliterate(self.name).split.join("")
        self.flag.attach(
            io: File.open("./public/flags/#{fl}.png"),
            filename: "#{fl}.png",
            content_type: "application/png"
        )
    end

end
