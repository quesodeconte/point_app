class SpendPointsController < ActionController::Base
  skip_before_action :verify_authenticity_token
  add_flash_types :info, :error, :success

  def spend_points
    if params[:amount].blank? || params[:slip_number].blank?
      flash[:error] = "Please submit both a point amount and slip number."

      redirect_back fallback_location: "/admin/dashboard"
      return
    end
    
    cur_points = Point.where(admin_user_id: current_admin_user.id).order(created_at: :desc).first.total
    spend_amount = params.fetch(:amount, {}).to_i
    new_total = cur_points - spend_amount

    slip_number = params.fetch(:slip_number, {}).to_i

    if new_total < 0
      flash[:error] = "You do not have enough points."

      redirect_back fallback_location: "/admin/dashboard"
      return
    end

    Point.create([{"admin_user_id": current_admin_user.id, "total": new_total, "slip_number": slip_number}])

    SpendPointsMailer.with(email: "moebaca@hotmail.com").spend_points.deliver_now
    flash[:success] = "Points successfully spent!"

    redirect_to "/admin/dashboard"
  end
end
