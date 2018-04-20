class Blog < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  valides_uniqueness_of :title 
end
