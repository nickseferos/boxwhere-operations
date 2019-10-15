class Shift < ApplicationRecord
  belongs_to :voyage, optional: false
  belongs_to :plan
end
