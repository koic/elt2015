ActiveAdmin.register User do
  permit_params User.attribute_names - %w[id created_at updated_at]
end
