ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    
    tabs do
      tab :CurrentPoints do
        panel "Current Points" do
          ul do
            status_tag AdminUser.find_by(id: current_admin_user.id).point.last.total
            status_tag AdminUser.find_by(id: current_admin_user.id).point.last.created_at
          end
        end
      end
    
      tab :PointHistory do

        panel "Point History" do
          ul do
            AdminUser.find_by(id: current_admin_user.id).point.each do |point|
              ul do
                status_tag point.total
                status_tag point.created_at
              end
            end
          end
        end
      
      end
    end
  end

end
