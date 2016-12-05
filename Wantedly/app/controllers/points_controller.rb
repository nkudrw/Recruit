class PointsController < ApplicationController
  def create
    @point = Point.new(user_id: params[:user_id],skill_id: params[:skill_id])
    @point.save
    @points = Point.where(skill_id: params[:skill_id])
    respond_to do |format|
        format.html { redirect_to user_path(params[:user_id])}
            format.js { render :index}
end
  end

  def destroy
    point = Point.find_by(user_id: current_user.id, skill_id: params[:skill_id])
    point.destroy
    @points = Point.where(skill_id: params[:skill_id])
  end
end
