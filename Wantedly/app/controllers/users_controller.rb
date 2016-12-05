class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
      @users = User.all

  end

  def show
      @user = User.find(params[:id])
      @skill = Skill.new
      @skill.points.build
      @skill_last = Skill.last
 
  end

end
