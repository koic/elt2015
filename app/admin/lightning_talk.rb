ActiveAdmin.register LightningTalk do
  attribute_names = LightningTalk.attribute_names - %w[id created_at updated_at]
  permit_params attribute_names

  form do |f|
    f.inputs do
      f.input :user, label: 'ユーザ', as: :select, collection: User.all.map {|u| ["#{u.nickname}", u.id]}
      (attribute_names - %w[user_id type votes_count]).each do |attribute_name|
        f.input attribute_name
      end
    end

    f.actions
  end
end
