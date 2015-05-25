require 'minitest/autorun'
require_relative 'acronym'

class AcronymTest < Minitest::Test
  def test_acronyms
    {
      'Portable Network Graphics' => 'PNG',
      'Ruby on Rails' => 'ROR',
      'HyperText Markup Language' => 'HTML',
      'First In, First Out' => 'FIFO',
      'PHP: Hypertext Preprocessor' => 'PHP',
      'Complementary metal-oxide semiconductor' => 'CMOS',
    }.each do |given, expected|
      assert_equal expected, Acronym.abbreviate(given), <<-MSG
        The acronym of '#{given}' should be '#{expected}'.
      MSG
    end
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    assert_equal 1, Acronym::VERSION
  end
end
