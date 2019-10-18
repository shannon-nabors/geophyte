class NationLeader < ApplicationRecord
  belongs_to :nation
  belongs_to :leader
end
