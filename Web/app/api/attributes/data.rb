module Attributes
  class Data < Grape::API

    resource :attributes_data do

      desc "create a new attribute"
      ## This takes care of parameter validation
      params do
        requires :accent, type: Integer
        requires :professor_id, type: Integer
        requires :book_needed, type: Integer
        requires :clarity, type: Integer
        requires :curves_course_grade, type: Integer
        requires :curves_test_grade, type: Integer
        requires :enthusiasm, type: Integer
        requires :exam_partial_cred, type: Integer
        requires :extra_credit, type: Integer
        requires :gender, type: Integer
        requires :helpfulness, type: Integer
        requires :hours_needed, type: Integer
        requires :hw_credit, type: Integer
        requires :hw_difficulty, type: Integer
        requires :likeability, type: Integer
        requires :patience, type: Integer
        requires :study_guide, type: Integer
        requires :test_difficulty, type: Integer

      end

      ## This takes care of creating attribute
      post do
        ProfessorAttribute.create!({
            professor_id: params[:professor_id],
            accent: params[:accent],
            book_needed: params[:book_needed],
            clarity: params[:clarity],
            curves_course_grade: params[:curves_course_grade],
            curves_test_grade: params[:curves_test_grade],
            enthusiasm: params[:enthusiasm],
            exam_partial_cred: params[:exam_partial_cred],
            extra_credit: params[:extra_credit],
            gender: params[:gender],
            helpfulness: params[:helpfulness],
            hours_needed: params[:hours_needed],
            hw_credit: params[:hw_credit],
            hw_difficulty: params[:hw_difficulty],
            likeability: params[:likeability],
            patience: params[:patience],
            study_guide: params[:study_guide],
            test_difficulty: params[:test_difficulty]})

      end


      get do
        ProfessorAttribute.all

      end


      # desc "Returns an item by its id."
      get '/:id' do
        attributes = ProfessorAttribute.where(professor_id: params[:id] )

      end
    end
  end
end


####curl http://localhost:3000/api/v1/attributes_data -d "professor_id=5&accent=5&book_needed=5&clarity=-5&curves_course_grade=-5&curves_test_grade=-5&enthusiasm=-5&exam_partial_cred=-5&extra_credit=-5&gender=-5&helpfulness=-5&hours_needed=-5&hw_credit=-5&hw_difficulty=-5&likeability=-5&patience=-5&study_guide=-5&test_difficulty=-5"