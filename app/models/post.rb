class Post < ApplicationRecord
  validates :text_field, presence: true
end
