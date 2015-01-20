class User < ActiveRecord::Base
	has_many :upload_files
	validates :login, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password_digest, presence: true
	has_secure_password
end
