ActiveAdmin.register Exhibit do
  permit_params Exhibit.attribute_names - %w[id created_at updated_at]
end
