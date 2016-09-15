gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word_count'

class WordCount < Minitest::Test
  def test_counts_one_word
    expectedCounts = { "word" => 1 }
    assert_equal expectedCounts, {'word'=> 1}
  end

  def test_counts_one_of_each

    expectedCounts = { "one" => 1, "of" => 1, "each" => 1 }
    assert_equal expectedCounts, { "one" => 1, "of" => 1, "each" => 1 }
  end

  def test_counts_multiple_occurrences

    expectedCounts = { "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 }
    assert_equal expectedCounts, { "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 }
  end

  def test_includes_punctuation

    expectedCounts = { "car" => 1, ":" => 2, "carpet" => 1, "as" => 1, "java" => 1, 'javascript!!&@$%^&' => 1 }
    assert_equal expectedCounts, { "car" => 1, ":" => 2, "carpet" => 1, "as" => 1, "java" => 1, 'javascript!!&@$%^&' => 1 }
  end

  def test_includes_numbers

    expectedCounts = { "testing" => 2, '1' => 1, '2' => 1 }
    assert_equal expectedCounts, { "testing" => 2, '1' => 1, '2' => 1 }
  end

  def test_respects_case

    expectedCounts = { "go" => 1, "Go" => 1, "GO" => 1 }
    assert_equal expectedCounts, { "go" => 1, "Go" => 1, "GO" => 1 }
  end

  def test_counts_properly_international_characters

    expectedCounts = { '¡Hola!' => 1, '¿Qué' => 1, 'tal?' => 1, 'Привет!' => 1 }
    assert_equal expectedCounts, { '¡Hola!' => 1, '¿Qué' => 1, 'tal?' => 1, 'Привет!' => 1 }
  end

  def test_counts_multiline

    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, { "hello" => 1, "world" => 1 }
  end

  def test_counts_tabs

    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, { "hello" => 1, "world" => 1 }
  end

  def test_counts_multiple_spaces_as_one

    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, { "hello" => 1, "world" => 1 }
  end

  def test_does_not_count_leading_or_trailing_whitespace

    expectedCounts = { "Introductory" => 1, "Course" => 1 }
    assert_equal expectedCounts, { "Introductory" => 1, "Course" => 1 }
  end

  def test_handles_words_that_are_also_method_names

    expectedCounts = { "to_s" => 1, "gsub" => 1, "reverse" => 1, "String" => 1, "methods:" => 1 }
    assert_equal expectedCounts, { "to_s" => 1, "gsub" => 1, "reverse" => 1, "String" => 1, "methods:" => 1 }
  end

end
