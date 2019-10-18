class NationsController < ApplicationController

    def index
        nations = Nation.all
        render json: NationSerializer.new(nations).to_serialized_json
    end

end
