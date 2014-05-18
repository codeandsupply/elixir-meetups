defmodule GreetingTest do
  use ExUnit.Case, async: true
  # import Mock

  test "Saying hello" do
    assert Greeting.hello("Ben") == "Hello, Ben!"
  end

  #test "Another way to say hello" do
  #  assert called Greeting.hello("Ben")
  #  assert Greeting.hi("Ben") == "Hello, Ben!"
  #end
end
