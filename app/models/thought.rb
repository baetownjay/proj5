class Thought < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :folder
end
