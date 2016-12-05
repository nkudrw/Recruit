class SkillsController < ApplicationController
    before_action :authenticate_user!
  def index
      @skills = Skill.order('point_count desc')
      @skill = Skill.new
      @skill.points.build
      @skill_last = Skill.last
  end

  def create
      @skill = Skill.new(skills_params)
      @skill.save
      respond_to do |format|
          format.html { redirect_to user_path(@skill.points.first.user_id)}
              format.js { render :index}
  end
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
