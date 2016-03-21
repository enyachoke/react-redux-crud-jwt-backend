class Client < ApplicationRecord
  enum client_status: [:ACTIVE,:TESTING,:INACTIVE,:TERMINATED]
end
