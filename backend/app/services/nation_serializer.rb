class NationSerializer

    def initialize(nation_object)
        @nation = nation_object
    end

    def to_serialized_json
        @nation.to_json(include: {
            leaders: {only: [:id, :name, :title, :photo]}
        }, except: [:created_at, :updated_at])
    end
    
end