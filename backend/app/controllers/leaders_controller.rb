class LeadersController < ApplicationController

    def index
        leaders = Leader.all
        render json: LeaderSerializer.new(leaders).to_serialized_json
    end

end
