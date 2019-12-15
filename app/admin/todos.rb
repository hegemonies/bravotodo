ActiveAdmin.register Todo do
  permit_params :done, :description, :date, :user_id

  form title: 'Add new todo' do |f|
    f.semantic_errors
    inputs 'Info' do
      f.input :user

      f.input :description
    end
    f.actions
  end
end
