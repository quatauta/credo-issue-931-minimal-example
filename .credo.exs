%{
  configs: [
    %{
      name: "default",
      files: %{
        included: [
          "lib/**"
        ],
        excluded: [~r"/_build/", ~r"/deps/"]
      },
      checks: [
        {Credo.Check.Consistency.UnusedVariableNames, []}
      ]
    }
  ]
}
