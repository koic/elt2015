ActiveAdmin.register Vote do
  permit_params Vote.attribute_names - %w[id created_at updated_at]
end
