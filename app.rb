require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle')
require('./lib/questions')


get('/') do
  riddle_test = QuestionAnswers.new()
  @@random_number = rand(1..4)
  @other_test = riddle_test.random_riddle(@@random_number)
  erb(:input)
end

post('/output') do
  @answer_one = params.fetch("answer_one")
  answers = Riddle.new(@answer_one)
  if answers.is_true?
    @result = "Pass"
  else
    @result = "Fail"
  end
  erb(:output)
end
