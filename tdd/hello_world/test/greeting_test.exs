defmodule GreetingTest do
  use ExUnit.Case
  use Hound.Helpers

  test "Saying hello" do
    assert Greeting.hello("Ben") == "Hello, Ben!"
  end

  # import Mock
  #test "Another way to say hello" do
  #  assert called Greeting.hello("Ben")
  #  assert Greeting.hi("Ben") == "Hello, Ben!"
  #end

  test "codeandsupply site is weak", meta do
    navigate_to("http://codeandsupply.co")

    assert page_title() == "Code & Supply"
  end
end
