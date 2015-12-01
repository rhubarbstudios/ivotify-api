class Issue < ActiveRecord::Base
  has_many :quotes, dependent: :destroy

  has_many :issue_sides, dependent: :destroy
  accepts_nested_attributes_for :issue_sides

  # has_many :issue_bullets, through: :issue_sides, dependent: :destroy


  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true
  validates :background, presence: true
end
