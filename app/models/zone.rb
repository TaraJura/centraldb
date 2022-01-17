class Zone < ApplicationRecord
  belongs_to :customer
  belongs_to :visitor
end
