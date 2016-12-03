class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :skills
         has_many :points , foreign_key: "user_id", dependent: :destroy
         has_many :skill_users, through: :points, source: :skill
end
