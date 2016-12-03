class PointsController < ApplicationController
  def create
    @point = Point.new(user_id: current_user.id,skill_id: params[:skill_id])
    @point.save
    @points = Point.where(skill_id: params[:skill_id])
     redirect_to skills_path
  end

  def destroy
    point = Point.find_by(user_id: current_user.id, skill_id: params[:skill_id])
    point.destroy
    @points = Point.where(skill_id: params[:skill_id])
  end
end
