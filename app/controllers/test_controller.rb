class TestController < ActionController::Base
  def index
    # unless current_admin_user.present?
    #   redirect_to '/admin', :status => :moved_permanently
    # end

    # @tester = "taco"
    # @taco = "what's up"

    # @admin_users = current_admin_user 
    # @point = Point.create(total: 3000, admin_users_id: 3)
    @users = AdminUser.all

    PointMailer.point_update.deliver_now

  end
end
