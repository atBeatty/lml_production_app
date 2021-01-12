class Production < ApplicationRecord
  belongs_to :crew, optional: true
end
