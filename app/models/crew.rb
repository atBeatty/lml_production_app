class Crew < ApplicationRecord
    has_many :crew_members
    has_one :production

    accepts_nested_attributes_for :crew_members
end
