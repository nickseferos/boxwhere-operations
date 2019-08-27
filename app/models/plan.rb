class Plan < ApplicationRecord
  belongs_to :voyage
  has_many :shifts
  accepts_nested_attributes_for :shifts
end
