ActiveAdmin.register Food do
  permit_params Food.attribute_names - %w[id created_at updated_at]
end
