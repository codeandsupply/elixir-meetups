defmodule GreetingTest do
  use ExUnit.Case, async: true

  test "Saying hello" do
    assert Greeting.hello("Ben") == "Hello, Ben!"
  end
end
