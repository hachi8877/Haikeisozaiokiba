class BackgroundImage < ApplicationRecord
  
  belongs_to :user
  attachment :image
  has_many :background_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  acts_as_taggable
  
  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
