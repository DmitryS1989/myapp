class Advert < ApplicationRecord
  resourcify
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :category, presence: true
  validates :status, presence: true
  enum status: { created: 0, published: 1, banned: 2, in_review: 4 }, _default: 'created'
  enum category: {auto: 0, moto: 1, velo: 2, foto: 3}

end
