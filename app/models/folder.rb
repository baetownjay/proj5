class Folder < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :thoughts
end
