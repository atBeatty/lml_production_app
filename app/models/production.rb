class Production < ApplicationRecord
  belongs_to :crew, optional: true
  has_many :crew_members, through: :crew

  # allow_nested_attributes_for :crew, :crew_members

  validates :name, presence: true

   
end