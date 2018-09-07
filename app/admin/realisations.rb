ActiveAdmin.register Realisation do
  permit_params :title, :subtitle, :description, :date, :featured, :cover_picture, :url, { photos: [] }

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title
      f.input :url
      f.input :subtitle
      f.input :description
      f.input :date
      f.input :featured, as: :check_boxes
      f.input :cover_picture, as: :file
      f.input :photos, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

end
