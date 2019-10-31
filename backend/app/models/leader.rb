class Leader < ApplicationRecord
    has_many :nation_leaders
    has_many :nations, through: :nation_leaders
    has_one_attached :photo

    def self.seed(name, position)
        n = (name == "Mauricio Macri" ? "Alberto Fernández" : name)
        Leader.find_or_create_by(name: n, title: position)
    end

    def attach_photo
        n = ActiveSupport::Inflector.transliterate(self.name).split.join("")
        self.photo.attach(
            io: File.open("./public/photos/#{n}.jpg"),
            filename: "#{n}.jpg",
            content_type: "application/jpeg"
        )
    end

end
