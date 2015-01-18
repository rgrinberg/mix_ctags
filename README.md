## mix_ctags

Mix task to generate tags files for your project using ctags

## Usage

1. Add this project add as a dependency. For example:

``` elixir
defp deps do
  [{ :mix_ctags, github: "rgrinberg/mix_ctags" }]
end
```

2. Run: `$ mix ctags`

## Credits

The ctags config file is shamelessly stolen from [mmoreaty/elixir-ctags](https://github.com/mmorearty/elixir-ctags)
