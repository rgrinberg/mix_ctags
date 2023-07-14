defmodule Mix.Tasks.Ctags do
  use Mix.Task

  defp possible_paths do
    base = "lib/ctags_ex"
    [ "#{Mix.Project.deps_path}/mix_ctags/#{base}",
      "./#{base}" ] # TODO remove, just for testing
  end

  defp ctags_command(options_path) do
    "ctags --options='#{options_path}' -R ."
  end

  @shortdoc "Generate ctags for the project"
  def run(_args) do
    possible_paths()
    |> Enum.find(&File.exists?/1)
    |> case() do
      nil -> IO.puts("Cannot find ctags_ex in #{possible_paths()}")
      p -> p |> ctags_command() |> Mix.Shell.IO.cmd()
    end
  end

end
