class PagesController < ApplicationController
    def index

    end

    def professor
        @posts = Professor.all
    end

    def new

    end

    def create

    end

    private

    def user_params
      params.require(:page).permit(:gender, :accent, :enthusiasm, :clarity, :helpfulness, :likeability, :patience, :hwDifficulty, :givesHwCredit, :testDifficulty, :givesStudyGuides, :isStudyGuideHelpful, :hoursPerWeek, :givesExtraCredit, :partialCredExams, :curvesCourseGrade, :curvesTestGrade, :needBook, :comments)
    end

end
