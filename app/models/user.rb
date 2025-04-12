class User < ApplicationRecord
  has_secure_password
  has_many :workout_days
  has_many :sessions, dependent: :destroy
  has_one :question, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }
  validates :email_address, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }
end
