class Story < ApplicationRecord
  belongs_to :user
  has_many :chapters
  extend FriendlyId
  friendly_id :name, use: :slugged
  
end
