class User < ApplicationRecord
  audited
  has_many :governings, dependent: :destroy
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  attr_reader :customer_id

    def user_can_acces_customer(customer)
      user_got_these_governings = self.governings.map{ |governing| governing.customer_id}  
      user_got_these_governings.include?(customer)
    end
end
