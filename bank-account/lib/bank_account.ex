defmodule CredoConsistencyUnusedVariableDetectsModule do
  defp a do
    _ = __MODULE__
  end
end
