require 'minitest/autorun'
require_relative 'isbn_verifier'

# Common test data version: 2.0.0 3251fa6
class IsbnVerifierTest < Minitest::Test
  def test_valid_isbn_number
    # skip
    string = "3-598-21508-8"
    assert IsbnVerifier.valid?(string), "Expected true, '#{string}' is a valid isbn"
  end

  def test_invalid_isbn_check_digit
    skip
    string = "3-598-21508-9"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_valid_isbn_number_with_a_check_digit_of_10
    skip
    string = "3-598-21507-X"
    assert IsbnVerifier.valid?(string), "Expected true, '#{string}' is a valid isbn"
  end

  def test_check_digit_is_a_character_other_than_x
    skip
    string = "3-598-21507-A"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_invalid_character_in_isbn
    skip
    string = "3-598-2K507-0"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_x_is_only_valid_as_a_check_digit
    skip
    string = "3-598-2X507-9"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_valid_isbn_without_separating_dashes
    skip
    string = "3598215088"
    assert IsbnVerifier.valid?(string), "Expected true, '#{string}' is a valid isbn"
  end

  def test_isbn_without_separating_dashes_and_x_as_check_digit
    skip
    string = "359821507X"
    assert IsbnVerifier.valid?(string), "Expected true, '#{string}' is a valid isbn"
  end

  def test_isbn_without_check_digit_and_dashes
    skip
    string = "359821507"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_too_long_isbn_and_no_dashes
    skip
    string = "3598215078X"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_isbn_without_check_digit
    skip
    string = "3-598-21507"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_too_long_isbn
    skip
    string = "3-598-21507-XX"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end

  def test_check_digit_of_x_should_not_be_used_for_0
    skip
    string = "3-598-21515-X"
    refute IsbnVerifier.valid?(string), "Expected false, '#{string}' is not a valid isbn"
  end
end
