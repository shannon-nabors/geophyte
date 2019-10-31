class LeaderSerializer

    def initialize(leader_object)
        @leader = leader_object
    end

    def to_serialized_json
        @leader.to_json(include: {
            nations: {only: [:id, :name, :flag]}
        }, except: [:created_at, :updated_at])
    end

    def to_serialized_json
        leaders = @leader.map do |leader|
            nations = leader.nations.map do |n|
                f = Rails.application.routes.url_helpers.rails_blob_path(n.flag, only_path: true)
                {name: n.name, flag: f}
            end
            p = Rails.application.routes.url_helpers.rails_blob_path(leader.photo, only_path: true)
            {name: leader.name, title: leader.title, photo: p, nations: nations}
        end
        leaders.to_json
    end
    
end