defmodule GreetingTest do
  use ExUnit.Case, async: true

  test "Saying hello" do
    assert Greeting.hello("Ben") == "Hello, Ben!"
  end

  # import Mock
  #test "Another way to say hello" do
  #  assert called Greeting.hello("Ben")
  #  assert Greeting.hi("Ben") == "Hello, Ben!"
  #end

#  use Hound.Helpers
#  hound_session
#  test "the truth", meta do
#    navigate_to("http://example.com/guestbook.html")
#
#    find_element(:name, "message")
#    |> fill_field("Happy Birthday ~!")
#    |> submit_element()
#
#    assert page_title() == "Thank you"
#  end
end
