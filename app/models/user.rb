class User < ApplicationRecord
  validates :username, :email, :password, :create_time, presence: true

  has_and_belongs_to_many :roles
  has_many :posts
end
