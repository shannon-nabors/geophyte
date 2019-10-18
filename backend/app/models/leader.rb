class Leader < ApplicationRecord
    has_many :nation_leaders
    has_many :nations, through: :nation_leaders
end
