class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, :masqueradable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
