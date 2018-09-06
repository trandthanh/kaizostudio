ActiveAdmin.register Gallery do

  permit_params :title, :realisation_id, photo: []

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :realisation_id, as: :select, collection: Realisation.all, multiple: true
      f.input :title
      f.input :photo, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

end


