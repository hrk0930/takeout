class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :image
         has_many :menus

         validates :name,          presence: true,            length: {maximum: 25}
         validates :phone_number,  presence: true
         validates :money,         presence: true
         validates :access,        presence: true
         validates :holiday,       presence: true
end
