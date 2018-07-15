class Post < ApplicationRecord
  has_many :comments, dependent: :destory
end
