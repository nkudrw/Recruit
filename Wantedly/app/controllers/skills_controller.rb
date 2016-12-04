class SkillsController < ApplicationController
    before_action :authenticate_user!
  def index
      @skills = Skill.order('point_count desc')
      @skill = Skill.new
  end

  def create
      @skill = Skill.new(skills_params)
      @skill.save
      redirect_to user_path(@skill.points.first.user_id)
  end

  def show
    end

  private
   def skills_params
     params.require(:skill).permit(:name,
     points_attributes: [:skill_id,:user_id]
     )
   end
end
