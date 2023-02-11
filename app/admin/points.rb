ActiveAdmin.register Point do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # scope_to :admin_users, association_method: :points
  
  #
  # permit_params do
  #   permitted = [:total, :admin_users_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :total, :admin_user_id

  index do
    column "Employee", :name
    column "Email", :email
    column "Points", :total
    column "Date Added", :created_at
    actions
  end

  filter :admin_user_name, :as => :string, label: "Employee"
  filter :admin_user_email, :as => :string, label: "Email"
  filter :total, label: "Points"

  form do |f|
    f.inputs do
      f.input :total, label: "Points"
      f.input :admin_user_id, label: "Employee"
    end
    f.actions
  end
  
end
