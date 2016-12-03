class Skill < ActiveRecord::Base
    has_many :users, through: :points, source: :user
    has_many :points, foreign_key: "skill_id", dependent: :destroy
  def point_user(user_id)
      points.find_by(user_id: user_id)
  end
end
