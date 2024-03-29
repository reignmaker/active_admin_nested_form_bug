ActiveAdmin.register Test do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs 'Test' do
      f.input :lesson
      f.input :name
    end
    f.inputs 'Question' do
      f.has_many :test_questions do |ff|
        ff.input :question
        ff.input :question_type
      end

    end
    f.actions


  end


end
