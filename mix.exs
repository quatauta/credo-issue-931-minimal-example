defmodule ExercismElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :excercism_elixir,
      version: "0.1.0",
      elixir: "~> 1.13",
      deps: deps(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
    ]
  end
end
