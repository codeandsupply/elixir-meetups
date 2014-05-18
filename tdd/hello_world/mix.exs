defmodule HelloWorld.Mixfile do
  use Mix.Project

  def project do
    [ app: :hello_world,
      version: "0.0.1",
      elixir: "> 0.10.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      #{ :mock, "> 0.13", git: "https://github.com/jjh42/mock.git" }
      { :hound, github: "HashNuke/hound", tag: "v0.5.1" }
    ]
  end
end
