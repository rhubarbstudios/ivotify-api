class IssueBullet < ActiveRecord::Base
  belongs_to :issue

  validates :body, presence: true
  validates :summary, presence: true
end
