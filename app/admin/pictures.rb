ActiveAdmin.register Picture do
  permit_params :url, :realisation_id

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :realisation_id, as: :select, collection: Realisation.all
      f.input :url, as: :file
    end
    f.actions
  end

end
