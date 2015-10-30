class Issue < ActiveRecord::Base
  has_many :quotes

  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true
end
