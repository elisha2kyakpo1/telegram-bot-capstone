class Questions
  QUESTION_BOX = {
    'Edger Lungu' => 'Hey! Who is the president of Zambia?',
    'December 2019' => 'When did crona virus start?',
    'Programming langaunge' => 'What do you call a software used to programe a computer?'
  }.freeze

  def value
    QUESTION_BOX.values do |value|
      value[rand(4)]
    end
  end

  def answer(value)
    @q_value = value
    QUESTION_BOX.keys do |key|
      key[rand(4)] == @q_value ? 'correct answer' : 'try again'
    end
  end
end
