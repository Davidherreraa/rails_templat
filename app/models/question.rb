class Question < ApplicationRecord
  belongs_to :user
  validates :age, :weight, :gender, :goal, presence: true
end
