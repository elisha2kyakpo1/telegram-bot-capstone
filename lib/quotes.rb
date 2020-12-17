class Quotes
  QUOTES = [
    'In all things of nature there is something of the marvellous. author: Aristotle',
    'The universe is transformation; our life is what our thoughts make it. author: Marcus Aurelius',
    'Memory is the mother of all wisdom. author: Samuel Johnson',
    'Silence is the true friend that never betrays. author: Confucius',
    'You might well remember that nothing can bring you success but yourself. author: Napoleon Hill',
    'Watch the little things; a small leak will sink a great ship. author: Benjamin Franklin',
    'God has given you one face, and you make yourself another. author: William Shakespeare',
    'To be wronged is nothing unless you continue to remember it. author: Confucius',
    'Kindness is the greatest wisdom.,author: null',
    'Action will remove the doubts that theory cannot solve. author: Tehyi Hsieh',
    'Do not miss all the beautiful colors of the rainbow looking for that pot of gold. author: null',
    'Your big opportunity may be right where you are now. author: Napoleon Hill',
    'People who say it cannot be done should not interrupt those who are doing it. author: Chinese proverb',
    'The day you decide to do it is your lucky day. author: Japanese proverb',
    'We must not say every mistake is a foolish one. author: Cicero',
    'Accept challenges, so that you may feel the exhilaration of victory. author: George Patton',
    'It is better to understand a little than to misunderstand a lot. author: Anatole France',
    'You do not drown by falling in water. You drown by staying there. author: null',
    'Never be afraid to try, remember... Amateurs built the ark, Professionals built the Titanic. author: null',
    'Correction does much, but encouragement does more. author: Johann Wolfgang von Goethe',
    'Know, first, who you are, and then adorn yourself accordingly. author: Epictetus',
    'The biggest adventure you can ever take is to live the life of your dreams. author: Oprah Winfrey',
    'Life is 10% what happens to you and 90% how you react to it. author: Charles Swindoll',
    'To want to be what one can be is purpose in life. author: Cynthia Ozick',
    'Remember that sometimes not getting what you want is a wonderful stroke of luck. author: Dalai Lama',
    'History will be kind to me for I intend to write it. author: Winston Churchill',
    'Our lives are a sum total of the choices we have made. author: Wayne Dyer',
    'Time stays long enough for anyone who will use it. author: Leonardo da Vinci',
    'You must welcome change as the rule but not as your ruler. author: Denis Waitley',
    'Give whatever you are doing and whoever you are with the gift of your attention. author: Jim Rohn',
    'Always be smarter than the people who hire you. author: Lena Horne',
    'Formula for success: under promise and over deliver. author: Tom Peters',
    'The eye sees only what the mind is prepared to comprehend. author: Henri Bergson',
    'People seldom notice old clothes if you wear a big smile. author: Lee Mildon',
    'The more light you allow within you, the brighter the world you live in will be. author: Shakti Gawain',
    'Nothing diminishes anxiety faster than action. author: Walter Anderson',
    'Man cannot discover new oceans unless he has the courage to lose sight of the shore. author: Andre Gide'
  ].freeze

  def request_quote
    QUOTES[rand(36)]
  end
end

# r = Quotes.new
# p r.request_quote
