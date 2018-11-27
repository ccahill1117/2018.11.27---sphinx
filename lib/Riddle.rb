class Riddle
  attr_accessor(:index, :riddles, :answers)

  def initialize
    @index = rand(4)
    @riddles = ["Close to the words of life stay I,
      But I wither, wane, and grow dry.","I do not breathe, but I run and jump.
        I do not eat, but I swim and stretch.
          I do not drink, but I sleep and stand.
            I do not think, but I grow and play.
              I do not see, but you see me every day.","Always wax, yet always wane: I melt, succumbéd to the flame.
                Lighting darkness, with fate unblest, I soon devolve to shapeless mess.","To you, rude would I never be,
                Though I flag my tongue for all to see."]
    @answers = ["flower", "leg", "candle", "dog"]
  end

  # def find_answer(riddle_index_used_in_view)
  #   @riddles[riddle_index_used_in_view]
  # end
end
