class Folder < ApplicationRecord
  validates :title, presence: true
  belongs_to :user_id
  has_many :thoughts
end
