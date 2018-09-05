ActiveAdmin.register Description do

  permit_params :page, :role, :style, :text

  form do |f|
    f.inputs do
      f.input :page, :as => :select, :collection => ["Home", "Agence", "Réalisations"]
      f.input :role, :as => :select, :collection => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
      f.input :style, :as => :select, :collection => ["Heading Roboto 300 Black", "Body Roboto 300 Grey", "Body Roboto 400 Grey"]
      f.input :text
    end
    f.actions
  end

end
