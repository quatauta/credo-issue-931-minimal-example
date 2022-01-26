defmodule UnusedVariableModule do
  @moduledoc false

  defp a do
    _ = __MODULE__
  end
end
