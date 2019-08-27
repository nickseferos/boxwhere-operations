class Vessel < ApplicationRecord
  belongs_to :steamship_line
  has_many :bays, inverse_of: :vessel
  accepts_nested_attributes_for :bays, reject_if: :all_blank, allow_destroy: true
end
