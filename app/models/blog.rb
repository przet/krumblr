class Blog < ApplicationRecord
  has_many :posts, dependent: : destroy
  #destroy posts if blog is destroyed
end
