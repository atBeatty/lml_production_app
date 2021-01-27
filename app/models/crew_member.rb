class CrewMember < ApplicationRecord
  belongs_to :crew

  validates :name, presence: true
end
