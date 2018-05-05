class Project < ApplicationRecord
  extend Enumerize
  enumerize :procedure, in:[:Concurrence, :Dispense]
  has_many :couriers
  has_one :archive_project
  validates_presence_of :reference,:object_project, :public_partenership,
                        :private_partenership, :amount
  validates_uniqueness_of :reference, :object_project
end
