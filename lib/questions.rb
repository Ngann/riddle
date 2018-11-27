class QuestionAnswers

  def initialize
  @questions = {
    1 => "The more you take, the more you leave behind. What am I?",
    2 => "Poor people have it. Rich people need it. If you eat it you die. what is it?",
    3 => "What does a snowman like to eat for breakfast?",
    4 => "I have a mouth but do not speek, I have a bed but do not sleep, I run everywhere but go no where, what am I"
  }
  end

  def random_riddle(random)
    return @questions_test = @questions.fetch(random)
  end
  
end
