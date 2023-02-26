# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do

  panel "Points Information" do
    tabs do
      tab :current_points do
        table do
          thead do
            tr do
              th "Total Points"
              th "Date Updated"
              th "Actions"
            end
          end

          tbody do
            tr do
              th Point.where(admin_user_id: current_admin_user.id).order(created_at: :desc).first.total
              th Point.where(admin_user_id: current_admin_user.id).order(created_at: :desc).first.created_at
              th link_to "Spend Points", "/admin/spend_points"
            end
          end
        end
      end
    
      tab :points_history do

        table do
          thead do
            tr do
              th "Total Points"
              th "Date Updated"
            end
          end

          tbody do
            Point.where(admin_user_id: current_admin_user.id).order(created_at: :desc).each do |point|
              tr do
                th point.total
                th point.created_at
              end
            end
          end
        end

      end
    end
  end

  end # content
end
