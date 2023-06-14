class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatrooms
  has_many :pets
  has_many :forums
  has_many :requests
  has_many :messages
  has_many :posts
  has_one_attached :photo

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not a valid email address" }
  validates :encrypted_password, presence: true, length: { minimum: 6 }
  validates :address, presence: true
  validates :bio, presence: true
  validates :house_type, presence: true
  validates :age, presence: true
  validates :full_name, presence: true
  validates :city, presence: true
end
