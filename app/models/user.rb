class User < ApplicationRecord
  has_secure_password
  def self.find_by_credentials(username,password)
    User.find_by(username: username).try(:authenticate, password)
  end
end
