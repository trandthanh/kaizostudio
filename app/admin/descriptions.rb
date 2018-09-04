ActiveAdmin.register Description do

  permit_params :page, :role, :style, :text

  form do |f|
    f.inputs do
      f.input :page, :as => :select, :collection => ["Home", "Agence", "Réalisations"]
      f.input :role, :as => :select, :collection => ["1", "2", "3", "4"]
      f.input :style, :as => :select, :collection => ["Heading Roboto 100 Black", "Body Roboto 300 Grey"]
      f.input :text
    end
    f.actions
  end

end
