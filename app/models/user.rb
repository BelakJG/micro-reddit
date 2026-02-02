class User < ApplicationRecord
  validates :name, format: { without: /\d/, message: "Can't contain numbers" }, length: { minimum: 2 }, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 6, maximum: 16}, presence: true
  
  has_many :posts
  has_many :comments
end
