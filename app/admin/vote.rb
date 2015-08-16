ActiveAdmin.register Vote do
  attribute_names = Vote.attribute_names - %w[id created_at updated_at]
  permit_params attribute_names

  form do |f|
    f.inputs do
      f.input :user, label: 'ユーザ', as: :select, collection: User.all.map {|u| ["#{u.nickname}", u.id]}
      f.input :exhibit, label: '出品物', as: :select, collection: Exhibit.all.map {|e| ["#{e.title}", e.id]}
      (attribute_names - %w[user_id exhibit_id]).each do |attribute_name|
        f.input attribute_name
      end
    end

    f.actions
  end
end
