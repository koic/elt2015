ActiveAdmin.register User do
  attribute_names = User.attribute_names - %w[id created_at updated_at]
  permit_params attribute_names

  form do |f|
    f.inputs do
      f.input :provider, label: 'プロバイダ', as: :select, collection: %w[Github Twitter]
      (attribute_names - %w[provider]).each do |attribute_name|
        f.input attribute_name
      end
    end

    f.actions
  end
end
