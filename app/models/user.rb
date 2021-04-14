# frozen_string_literal: true

class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, :email, presence: true
  validates :name, length: { minimum: 1, maximum: 60 }
  validates :email, length: { minimum: 4, maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
end
