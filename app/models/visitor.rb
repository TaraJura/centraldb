class Visitor < ApplicationRecord
  audited
  has_many :zones
  belongs_to :customer
end
