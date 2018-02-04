defmodule MixCtags.Mixfile do
  use Mix.Project

  def project do
    [app: :mix_ctags,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps()]
  end

  defp deps do
    []
  end
end
