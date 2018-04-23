class Admin < ApplicationRecord

  validates :username, presence: true,
            uniqueness: { case_sensitive: false, message: "%{value} is already existed!"}, 
            length: { minimum: 8, maximum: 20}

  validates :email, presence: true, 
            uniqueness: { case_sensitive: false, message: "%{value} is already existed!"},
            length: { maximum: 100},
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Invalid Email Format!"}

  validates :password, presence: true,
            format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}/i, 
            message: "Password must contain at least a lowercase letter, a uppercase, a digit, a special char and 8+ chars"}

  has_secure_password
      
end