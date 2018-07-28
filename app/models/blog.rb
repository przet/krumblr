class Blog < ApplicationRecord
  #destroy posts if blog is destroyed
  has_many :posts, dependent: :destroy
end
