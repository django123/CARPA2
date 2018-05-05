class User < ApplicationRecord
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enumerize :skin,in: [:President, :CST, :ET1, :ET2, :EJ1, :EJ2,:Assistante_PR,:Assistante_CST ]
  has_many :couriers
  has_one :archives

  validates_presence_of :lName, :email, :adress, :phone,
                        :registration_number, :skin
  validates_uniqueness_of :lName, :phone, :registration_number,:skin
end
