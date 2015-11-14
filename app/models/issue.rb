class Issue < ActiveRecord::Base
  has_many :quotes, dependent: :destroy
  has_many :issue_bullets, dependent: :destroy
  accepts_nested_attributes_for :issue_bullets

  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true
  # validates :background, presence: true
  # validates :side_one, presence: true
  # validates :side_two, presence: true
end
