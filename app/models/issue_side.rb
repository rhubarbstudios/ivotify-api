class IssueSide < ActiveRecord::Base
  belongs_to :issue

  validates :title, presence: true

end
