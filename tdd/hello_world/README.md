# TDD in Elixir

When starting with Elixir, one of the first things I had hoped to find was good
ways to do Test Driven Development. This example app shows how to do TDD in
Elixir!

Elixir is a very young language so some of the tools just you can find in
languages like Ruby just aren't there yet.

What do I expect to find in Ruby?

- Unit testing with assertions
- Acceptance/integration testing
- Easy fixtures or factories
- Mocking and stubbing
- QuickCheck

What from that list do I get in Elixir?

- Unit testing with assertions ✔︎ [ExUnit](http://elixir-lang.org/getting_started/ex_unit/1.html)
- Acceptance/integration testing ✔︎ [Hound](https://github.com/HashNuke/hound)
- Easy fixtures or factories 𝘟 couldn't find anything
- Mocking and stubbing ✔︎ https://github.com/jjh42/mock
- QuickCheck ✔︎ https://github.com/manopapad/proper

## Installing Testing Dependencies

In mix.exs, there is a place for dependencies.

````
defp deps do
  # [ {:mock, '> 0.13', git: 'https://github.com/jjh42/mock.git'} ]
end
````

Once your dependency is added, run `mix deps.get`

Then you should be able to `import Mock` in your text files where necessary.

````
defmodule GreetingTest do
  use ExUnit.Case, async: true
  import Mock
end
````

## Unit testing with assertions ✔︎

[ExUnit](http://elixir-lang.org/getting_started/ex_unit/1.html)

Built right in with Elixir, only need to do `use ExUnit.Case` in a module. Then
have assertions and named tests ready to use.

````
  test "Saying hello" do
    assert Greeting.hello("Ben") == "Hello, Ben!"
  end
````

Out of the box, ExUnit comes with asynchronous tests. Only need to add an
argument. `use ExUnit.Case, async: true`

## Acceptance/integration testing ✔︎

[Hound](https://github.com/HashNuke/hound)

Install it by adding to deps

````
  { :hound, github: "HashNuke/hound", tag: "v0.5.1" }
````

Run `mix deps.get`

Start it in `test_helper.exs`

````
# Hound.start [driver: "chrome_driver"]
````

Use it

````
  test "the truth", meta do
    navigate_to("http://example.com/guestbook.html")

    find_element(:name, "message")
    |> fill_field("Happy Birthday ~!")
    |> submit_element()

    assert page_title() == "Thank you"
  end
````

## Easy Fixtures or Factories

Elixir's big conference is named Elixir Factory. SEO fail :(

````
@justinxreese I would reach for simple functions in these cases, ie
create_admin(name: “Justin”…) => %User{name: “Justin”, role: :admin}.
````

[Tweet](https://twitter.com/chris_mccord/status/466371187585863681)

## Frameworks

[Amrita](https://github.com/josephwilk/amrita)

# To Look into
````
doctests
http://blog.pluralsight.com/elixir-is-for-programmers
http://conscientiousprogrammer.com/blog/2013/08/26/openhack-pittsburgh-learning-elixir-test-driven-and-package-publishing/
http://elixir-lang.org/getting_started/ex_unit/1.html
http://elixir-lang.org/docs/master/ExUnit.DocTest.html
https://github.com/chrismccord/elixir_express
````

# Caveats

Only could get Hound to work with

- `Elixir 0.13.1`
- `Hound master`
