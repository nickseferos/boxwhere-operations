class Plan < ApplicationRecord
  belongs_to :voyage
  has_many :shifts, inverse_of: :plan
  accepts_nested_attributes_for :shifts
end
