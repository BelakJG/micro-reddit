class User < ApplicationRecord
  validates :name, format: { without: /\d/, message: "Can't contain numbers" }, length: { minimum: 2 }, presence: true
end
