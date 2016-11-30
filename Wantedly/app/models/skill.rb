class Skill < ActiveRecord::Base
    belongs_to :user
    has_many :points, dependent: :destroy
  def point_user(user_id)
      points.find_by(user_id: user_id)
  end
end
