class Crew < ApplicationRecord
    has_many :crew_members
    has_many :productions

    accepts_nested_attributes_for :crew_members
end
