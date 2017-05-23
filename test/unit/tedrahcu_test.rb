require_relative '../preamble'

class TedrahcuTest < Minitest::Test
  def test_detects_charset
    assert_nil Tedrahcu.detect(nil)
    assert_equal '', Tedrahcu.detect('')
    assert_equal 'UTF-8', Tedrahcu.detect('é')
    assert_equal 'ASCII', Tedrahcu.detect('There are so many ASCII characters.')
  end
end
