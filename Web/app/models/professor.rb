class Professor < ActiveRecord::Base

  def getReview (myParam)
    case (myParam)
      when 1
        "Inadequate"
      when 2
        "Below Average"
      when 3
        "Average"
      when 4
        "Above Average"
      when 5
        "Excellent"
      default
        "Error review"
    end
  end
end
