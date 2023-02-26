class SpendPointsController < ActionController::Base
  skip_before_action :verify_authenticity_token
  add_flash_types :info, :error, :success

  def spend_points
    cur_points = Point.where(admin_user_id: current_admin_user.id).order(created_at: :desc).first.total
    spend_amount = params.fetch(:amount, {}).to_i
    new_total = cur_points - spend_amount

    if new_total < 0
      flash[:error] = "You do not have enough points."

      redirect_back fallback_location: "/admin/dashboard"
      return
    end

    Point.create([{"admin_user_id": current_admin_user.id, "total": new_total}])
    flash[:success] = "Points successfully spent!"

    redirect_to "/admin/dashboard"
  end
end
