ActiveAdmin.register BxBlockProfile::Profile, as: "Profile" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :name, :phone_number, :date_of_birth, :city, :address, :street, :apartment, :floor, :country, :state, :postal_code
 
  index do
    selectable_column
    id_column
    column :user_id
    column :name
    column :phone_number
    column :created_at
    actions
  end

  filter :user_id
  filter :name
  filter :phone_number
  filter :created_at

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :name
      f.input :phone_number
    end
    f.actions
  end
  
end
