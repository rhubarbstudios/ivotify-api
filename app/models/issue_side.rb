class IssueSide < ActiveRecord::Base
  belongs_to :issue
  # has_many :issue_bullets

  # accepts_nested_attributes_for :issue_bullets

  validates :title, presence: true

end
