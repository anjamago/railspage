class User < ApplicationRecord
  attr_accessor :name, :email
  has_many :chirps, class_name: "Chirp"

  validates :email, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true

  has_secure_password
end
