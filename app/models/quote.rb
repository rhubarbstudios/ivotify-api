class Quote < ActiveRecord::Base
  belongs_to :issue
  belongs_to :candidate

  validates :body, presence: true, uniqueness: true
  validates :source, presence: true

end
