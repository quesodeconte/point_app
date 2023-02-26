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
              th "Updated"
            end
          end
          tbody do
            tr do
              th Point.first.total
              th Point.first.created_at
            end
          end
        end
      end
    
      tab :points_history do
      end

    end
  end

  end # content
end
