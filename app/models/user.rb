class User < ActiveRecord::Base
  has_secure_password

  # associations
  has_many :contacts
end
