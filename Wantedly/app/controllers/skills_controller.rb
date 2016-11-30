class SkillsController < ApplicationController
  def index
      @skills = Skill.all
      @skill = Skill.new
  end

  def create
      @skill = Skill.new(skills_params)
      @skill.save
      redirect_to skills_path
  end

  def show
  end

  private
   def skills_params
     params.require(:skill).permit(:name)
   end
end
