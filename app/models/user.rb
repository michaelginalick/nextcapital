class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :tasks
  has_secure_password
  validates :email, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "has wrong format"}
  validates :password, :length => {:minimum => 6}

end
