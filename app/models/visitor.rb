class Visitor < ApplicationRecord
  has_many :zones
  belongs_to :customer
end
