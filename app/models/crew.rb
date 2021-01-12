class Crew < ApplicationRecord
    has_many :crew_members
    has_many :productions
    # has_many
end
