ActiveAdmin.register Point do
  # index :title => "Here's a list of users" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
    permit_params :admin_user_id, :total
    
    index do
      # selectable_column
      column "Employee Name", :username, sortable: true 
      column "Points Total",:total, sortable: true
      column "Date Added",:created_at
    end
  
  # end
end
