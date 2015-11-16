class IssueSide < ActiveRecord::Base
  belongs_to :issue
  has_many :issue_bullets

  validates :title, presence: true

end
