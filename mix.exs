defmodule ChuckApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :chuck_api,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      # hex.pm and docs
      description: description(),
      package: package(),
      # Docs
      name: "ChuckApi",
      source_url: "https://github.com/zerai/chuck-api-ex",
      homepage_url: "https://github.com/zerai/chuck-api-ex",
      docs: [
        # The main page in the docs
        main: "ChuckApi",
        # favicon: "path/to/favicon.png",
        # logo: "path/to/logo.png",
        extras: ["README.md"]
      ]
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
      {:httpoison, "~> 2.0"},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:mix_audit, "~> 2.1", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp aliases do
    [
      cs: "format --check-formatted",
      cs_fix: "format",
      sa: "credo"
    ]
  end

  defp description do
    """
    Elixir Client for the Chuck Norris Joke Api.
    """
  end

  defp package do
    [
      maintainers: ["Zerai Teclai"],
      licenses: ["MIT"]
    ]
  end
end
