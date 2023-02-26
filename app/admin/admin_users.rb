ActiveAdmin.register AdminUser do
  controller do
    before_action { @page_title = "Employees" }
  end
  navigation_menu :default

  permit_params :email, :password, :password_confirmation, :is_admin

  index do
    selectable_column
    id_column
    column :employee_name
    column :email
    column :current_sign_in_at
    column :is_admin
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :is_admin
      f.input :password_confirmation
    end
    f.actions
  end

end
