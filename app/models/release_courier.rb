class ReleaseCourier < ApplicationRecord
  belongs_to :user
  has_one :archive_release_courier
  validates_presence_of :destination, :date
end
