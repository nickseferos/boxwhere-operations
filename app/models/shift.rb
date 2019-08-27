class Shift < ApplicationRecord
  belongs_to :voyage, optional: false
end
