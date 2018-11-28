class Story < ApplicationRecord
  belongs_to :user
  has_many :chapters
  
  
end
