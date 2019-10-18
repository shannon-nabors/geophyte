class LeaderSerializer

    def initialize(leader_object)
        @leader = leader_object
    end

    def to_serialized_json
        @leader.to_json(include: {
            nations: {only: [:id, :name, :flag]}
        }, except: [:created_at, :updated_at])
    end
    
end