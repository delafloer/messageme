class User < ApplicationRecord
  validates :username, uniqueness: {case_sensetive: false}, presence: true,
				   	   length: {minimum: 3, maximum: 20}
  has_secure_password
  has_many :messages
end
