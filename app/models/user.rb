class User < ActiveRecord::Base
	has_many :scrubs, dependent: :destroy
	validates :login, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password_digest, presence: true
	has_secure_password
end
