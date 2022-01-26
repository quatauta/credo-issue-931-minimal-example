# Credo Issue 931 Minimal Example -- Credo detects `__MODULE__` as unused variable

https://github.com/rrrene/credo/issues/931

This is a minimal exmaple to illustrate how Credo detects [`__MODULE__`](https://hexdocs.pm/elixir/Kernel.SpecialForms.html) as unused variable with inconsistant naming in an Elixir module.

Credo check Credo.Check.Consistency.UnusedVariableNames is supposed to warn about inconsistant naming of unused variables starting with `_`. In some situations, Credo.Check.Consistency.UnusedVariableNames detects [`__MODULE__`](https://hexdocs.pm/elixir/Kernel.SpecialForms.html) or other "meta variables/macros" as unused variable with inconsistant naming.

The Elixir code in [lib/unused_variable_module.ex](lib/unused_variable_module.ex) triggers the unexpected check result.

```elixir
# lib/unused_variable_module.ex
defmodule UnusedVariableModule do
  defp a do
    _ = __MODULE__
  end
end
```

```console
$ git clone https://github.com/quatauta/credo-issue-931-minimal-example.git
$ mix deps.get
$ mix credo --checks Credo.Check.Consistency.UnusedVariableNames
Checking 1 source file ...

  Consistency
┃
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `__MODULE__` does not follow that convention.
┃       lib/unused_variable_module.ex:5:9 #(UnusedVariableModule.a)

Please report incorrect results: https://github.com/rrrene/credo/issues

Analysis took 0.04 seconds (0.04s to load, 0.00s running 1 check on 1 file)
2 mods/funs, found 1 consistency issue.

Use `mix credo explain` to explain issues, `mix credo --help` for options.
```
