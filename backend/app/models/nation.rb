class Nation < ApplicationRecord
    has_many :nation_leaders
    has_many :leaders, through: :nation_leaders

    def self.seed(name, flag)
        Nation.create(name: name, flag: flag)
    end
end
