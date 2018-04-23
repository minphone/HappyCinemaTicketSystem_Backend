class User < ApplicationRecord

  belongs_to :region, optional: true

  validates :username, presence: true,
            uniqueness: { case_senitive: false, message: "%{value} is already existed!" },
            length: { minimum: 8, maximum: 20 }

  validates :email, presence: true,
            uniqueness: { case_senitive: false, message: "%{value} is already existed!" },
            length: { maximum: 100 },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Invalid Email Format!"}

  validates :gender, presence: true

end