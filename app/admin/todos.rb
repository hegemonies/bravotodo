ActiveAdmin.register Todo do
 permit_params :done, :description, :date, :user_id
end
