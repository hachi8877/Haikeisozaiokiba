class BackgroundComment < ApplicationRecord
  
  belongs_to :user
  belongs_to :background_image
end
