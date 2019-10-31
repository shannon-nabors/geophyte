class NationSerializer

    def initialize(nation_object)
        @nations = nation_object
    end

    def to_serialized_json
        nations = @nations.map do |nation|
            leaders = nation.leaders.map do |l|
                p = Rails.application.routes.url_helpers.rails_blob_path(l.photo, only_path: true)
                {name: l.name, title: l.title, photo: p}
            end
            f = Rails.application.routes.url_helpers.rails_blob_path(nation.flag, only_path: true)
            {name: nation.name, flag: f, leaders: leaders}
        end
        nations.to_json
    end
    
end