# frozen_string_literal: true

class Snapshot < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 250 }

  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: 'Please upload a valid fule type(jpeg, gif, png).' },
                    size: { less_than: 5.megabytes,
                            message: '  Your image exceded 5MB.' }

  def display_image
    image.variant(resize_to_limit: [200, 200])
  end
end
