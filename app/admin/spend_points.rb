ActiveAdmin.register_page "Spend Points" do
  content :title => "Spend Points" do
    panel "Spend Points" do

      form(@point, :url => "/admin/spend_points", :method => "post") do |f|
        f.label "Amount"
        br
        f.input :type => :number, min: 0, name:"amount", label: 'Amount'
        br
        br
        f.label "Slip Number"
        br
        f.input :type => :number, min: 0, name:"slip_number", label: 'Slip Number'
        br
        br
        f.input :type => :submit
        csrf_meta_tags
      end
    end  
  end
end