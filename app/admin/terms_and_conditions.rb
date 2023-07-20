ActiveAdmin.register BxBlockDetail::TermsAndCondition do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content
  
  index do
    selectable_column
    id_column
    column :title
    column :content
    column :created_at
    actions
  end

  filter :title
  filter :content
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
    end
    f.actions
  end

end
