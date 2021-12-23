class User < ApplicationRecord
  has_many :Task
  has_many :answer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def username #Split @email.com from email address to create a username
    email.split('@')[0].capitalize
  end
end
