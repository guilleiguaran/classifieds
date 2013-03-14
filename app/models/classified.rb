class Classified < ActiveRecord::Base

  belongs_to :category

  attr_accessible :content

  default_scope order('id')

  validates :content, presence: true
  validates :content, uniqueness: true
end
