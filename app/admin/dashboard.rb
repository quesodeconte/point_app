# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Current Points" do
          Point.first do |point|
            point do
              selectable_column
              column "My Custom Title", :total
            end
          end
        end
      end
    end

  end # content
end
