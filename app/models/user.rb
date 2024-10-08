class User < ApplicationRecord
  has_many :offers
  has_many :bookings
  has_many :offers_bookings, through: :offers, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
