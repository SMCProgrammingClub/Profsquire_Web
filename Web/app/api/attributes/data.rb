module Attributes
  class Data < Grape::API

    resource :attributes_data do


          desc "create a new attribute"
          ## This takes care of parameter validation
          params do
            requires :accent, type: Integer
            requires :professor_id, type:Integer
            requires :book_needed, type:Integer
            requires :clarity, type:Integer
            requires :curves_course_grade, type:Integer
            requires :curves_test_grade, type:Integer
            requires :enthusiasm, type:Integer
            requires :exam_partial_cred, type:Integer
            requires :extracredit, type: Integer
            requires :gender, type: Integer
            requires :helpfulness, type: Integer
            requires :hoursneeded, type: Integer
            requires :hwcredit, type: Integer
            requires :hwdifficulty, type: Integer
            requires :likeability, type: Integer
            requires :patience, type: Integer
            requires :studyguide, type: Integer
            requires :testdifficulty, type: Integer

          end

          ## This takes care of creating attribute
          post do
            Accent.create!({
            accent:params[:accent],
            professor_id:params[:professor_id]
                        })

            BookNeeded.create!({
            book_needed:params[:book_needed],
            professor_id:params[:professor_id]
                               })
            Clarity.create!({
                                   clarity:params[:clarity],
                                   professor_id:params[:professor_id]
                               })

            CurvesCourseGrade.create!({
                                          curves_course_grade:params[:curves_course_grade],
                                   professor_id:params[:professor_id]
                               })
            CurvesTestGrade.create!({
                                   curves_test_grade:params[:curves_test_grade],
                                   professor_id:params[:professor_id]
                               })
            Enthusiasm.create!({
                                   enthusiasm:params[:enthusiasm],
                                   professor_id:params[:professor_id]
                               })
            ExamPartialCred.create!({
                                   exam_partial_cred:params[:exam_partial_cred],
                                   professor_id:params[:professor_id]
                               })
            ExtraCredit.create!({
                                   extracredit:params[:extracredit],
                                   professor_id:params[:professor_id]
                               })

            Gender.create!({
                                   gender:params[:gender],
                                   professor_id:params[:professor_id]
                               })
            Helpfulness.create!({
                                   helpfulness:params[:helpfulness],
                                   professor_id:params[:professor_id]
                               })
            HoursNeeded.create!({
                                   hoursneeded:params[:hoursneeded],
                                   professor_id:params[:professor_id]
                               })
            HwCredit.create!({
                                   hwcredit:params[:hwcredit],
                                   professor_id:params[:professor_id]
                               })
            HwDifficulty.create!({
                                   hwdifficulty:params[:hwdifficulty],
                                   professor_id:params[:professor_id]
                               })
            Likeability.create!({
                                   likeability:params[:likeability],
                                   professor_id:params[:professor_id]
                               })
            Patience.create!({
                                   patience:params[:patience],
                                   professor_id:params[:professor_id]
                               })
            StudyGuide.create!({
                                   studyguide:params[:studyguide],
                                   professor_id:params[:professor_id]
                               })
            TestDifficulty.create!({
                                   testdifficulty:params[:testdifficulty],
                                   professor_id:params[:professor_id]
                               })

          end

          get do
            Accent.all
            BookNeeded.all
          end


          desc "Returns an item by its id."
          get '/:id' do
            course = Accent.where(professor_id: params[:id] )
          end
    end
  end
end


####curl http://localhost:3000/api/v1/attributes_data -d "professor_id=1&accent=1&book_needed=3&clarity=-1&curves_course_grade=-1&curves_test_grade=-1&enthusiasm=-1&exam_partial_cred=-1&extracredit=-1&gender=-1&helpfulness=-1&hoursneeded=-1&hwcredit=-1&hwdifficulty=-1&likeability=-1&patience=-1&studyguide=-1&testdifficulty=-1"