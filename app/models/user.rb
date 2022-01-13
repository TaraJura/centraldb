class User < ApplicationRecord
  has_many :governings, dependent: :destroy
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end