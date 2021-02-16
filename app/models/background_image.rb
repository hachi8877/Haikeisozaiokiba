class BackgroundImage < ApplicationRecord
  
  belongs_to :user
  attachment :image
  has_many :background_comments, dependent: :destroy
end
