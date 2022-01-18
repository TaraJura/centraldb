class Visitor < ApplicationRecord
  audited
  belongs_to :customer
end
