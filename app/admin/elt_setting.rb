ActiveAdmin.register EltSetting do
  attribute_names = EltSetting.attribute_names - %w[id created_at updated_at]
  permit_params attribute_names
end
