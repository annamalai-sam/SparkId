class User < ApplicationRecord
  has_secure_password

  validates :mail, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, :confirmation => true

end
