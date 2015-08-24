ActiveAdmin.register VoteSetting do
  attribute_names = VoteSetting.attribute_names - %w[id created_at updated_at]
  permit_params attribute_names
end
