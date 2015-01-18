defmodule Mix.Tasks.Ctags do
  use Mix.Task

  defp ctags_opt_path do
    base = "lib/ctags_ex"
    p1 = "#{Mix.Project.deps_path}/mix_ctags/#{base}"
    p2 = "./#{base}"

    IO.puts "p1: #{p1}"
    IO.puts "p2: #{p2}"

    cond do
      File.exists? p1 -> {:ok, p1}
      File.exists? p2 -> {:ok, p2}
      true            -> :not_found
    end
  end

  @shortdoc "Generate ctags for the project"
  def run(args) do
    case ctags_opt_path do
      {:ok, p}   -> Mix.Shell.IO.cmd "ctags --options='./lib/ctags_ex' -R ."
      :not_found -> IO.puts "Cannot find ctags_ex file"
    end
  end

end
