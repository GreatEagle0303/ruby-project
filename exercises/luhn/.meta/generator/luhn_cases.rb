require 'generator/exercise_cases'

class LuhnCase < Generator::ExerciseCase
  def workload
    "#{assert} Luhn.valid?(#{input.inspect})"
  end
end
