class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :scrubs, dependent: :destroy
	validates :login, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password_digest, presence: true
	has_secure_password	
end
