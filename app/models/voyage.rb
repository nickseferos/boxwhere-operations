class Voyage < ApplicationRecord
  belongs_to :terminal
  belongs_to :vessel
end
