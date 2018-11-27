class Riddle
  def initialize(answer_one)
    @answer_one = answer_one.upcase

    @answers = {
      1 => "FOOTSTEPS",
      2 => "NOTHING",
      3 => "FROSTED FLAKES",
      4 => "RIVERBED"
    }


  end

  # def question_number
  #   return @questions_test = @questions.fetch(1)
  # end

  def is_true?
    answers_test = @answers.fetch(@@random_number)
    if (@answer_one === answers_test)
      return true
    else
      return false
    end
  end

end
