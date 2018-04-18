class Region < ApplicationRecord

  has_many :users

  validates :region_name, presence: true,
            uniqueness: { case_sensitive: false, message: "%{value} is already existed!"},
            length: { maximum: 20}
  
end