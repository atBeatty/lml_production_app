class Production < ApplicationRecord
  belongs_to :crew, optional: true

  has_many :crew_members, through: :crew

  validates :name, presence: true
   
end