ActiveAdmin.register LightningTalk do
  permit_params LightningTalk.attribute_names - %w[id created_at updated_at]
end
