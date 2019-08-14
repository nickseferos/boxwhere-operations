class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, if: :domain_check

  APPROVED_DOMAINS = ["ssamarine.com", "tideworks.com"]

  def domain_check
    unless APPROVED_DOMAINS.any? { |word| email.end_with?(word)}
      errors.add(:email, "You must use a valid domain")
    end
  end
end
