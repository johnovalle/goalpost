class User < ActiveRecord::Base
  has_many :pages
  accepts_nested_attributes_for :pages
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, uniqueness: { case_sensitive: false }
  
end
