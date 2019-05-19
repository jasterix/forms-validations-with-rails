class Doctor < ApplicationRecord

  validates :name, :specialty, presence: true

  validates :registration_number, uniqueness: true
end
