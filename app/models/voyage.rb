class Voyage < ApplicationRecord
  belongs_to :terminal
  belongs_to :vessel
  has_many :plans

  validates :numberout, :numberin, :eta, :etd, :terminal_id, :vessel_id, :job_number, presence: true
  validates :job_number, uniqueness: true
end
