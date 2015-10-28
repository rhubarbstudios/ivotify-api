class Candidate < ActiveRecord::Base
  has_many :quotes
  accepts_nested_attributes_for :quotes

  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :bio,         presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
