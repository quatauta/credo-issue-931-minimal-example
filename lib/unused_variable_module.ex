defmodule UnusedVariableModule do
  defp a do
    _ = __MODULE__
  end
end
