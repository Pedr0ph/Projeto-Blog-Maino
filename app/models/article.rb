class Article < ApplicationRecord
  has_many :comments

  belongs_to :author, class_name: "User", foreign_key: :user_id

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
