class IssueBullet < ActiveRecord::Base
  belongs_to :issue_side
  has_one :issue, through: :issue_side

  validates :body, presence: true
end
