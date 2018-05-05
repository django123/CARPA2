class Archive < ApplicationRecord
  has_many :couriers
  belongs_to :user
  validates_presence_of :name
end