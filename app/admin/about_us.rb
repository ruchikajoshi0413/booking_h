ActiveAdmin.register BxBlockDetail::AboutU do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description
  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.actions
  end
  
end
